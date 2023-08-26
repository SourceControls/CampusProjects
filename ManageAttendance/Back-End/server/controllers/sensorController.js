const io = require('../component/IO');
const doRequest = require('../component/doRequest');
let request = require('request');
const cheatDetector = require('../component/CheatDetector');
const LEDIP = '192.168.137.163';
const {diemDanh, host} = require('../server');
class SensorControllers {
    alertSensorFail() {
        return;
        try {
            request.get('http://' + LEDIP + '/LED=ON');
            setTimeout(() => {
                request.get('http://' + LEDIP + '/LED=OFF');
            }, 200);
            setTimeout(() => {
                request.get('http://' + LEDIP + '/LED=ON');
            }, 400);
            setTimeout(() => {
                request.get('http://' + LEDIP + '/LED=OFF');
            }, 600);
        } catch (error) {
            console.log(error);
        }
    }
    alertSensorSuccess() {
        return;
        try {
            request.get('http://' + LEDIP + '/LED=ON');
            setTimeout(() => {
                request.get('http://' + LEDIP + '/LED=OFF');
            }, 700);
        } catch (error) {
            console.log(error);
        }
    }
    //điểm danh bằng QR.
    insertSensorData = async (req, res) => {
        var myobj = {...req.query};
        let [IDBUOIHOC, IDLSV, IP, lat, lng] = myobj.data.split('__');
        myobj.IDBUOIHOC = IDBUOIHOC;
        myobj.IDLSV = IDLSV;
        myobj.IP = IP;

        //diem danh bang QR
        myobj.IDBUOIHOC = parseInt(myobj.IDBUOIHOC);
        myobj.IDLSV = parseInt(myobj.IDLSV);
        console.log('SensorData: ', myobj);

        try {
            let BUOIHOC = (await doRequest(host + '/BUOIHOC/GetList', {IDBUOIHOC: myobj.IDBUOIHOC}))[0];

            //check xem buổi học đó còn điểm danh được không
            if (BUOIHOC.SUBMITTED || !BUOIHOC.STARTTIME) {
                console.log(BUOIHOC.SUBMITTED, BUOIHOC.STARTTIME);
                this.alertSensorFail();
                res.send('FAIL!! Ngoài giờ điểm danh');
                return;
            }
            let currentHour = new Date().getHours();
            let currentMinutes = new Date().getMinutes();
            let [buoiHocHour, buoiHocMinutes] = BUOIHOC.STARTTIME.split(':');
            let totalCurrentMinutes = parseInt(currentHour) * 60 + parseInt(currentMinutes);
            let totalBuoiHocMinutes = parseInt(buoiHocHour) * 60 + parseInt(buoiHocMinutes);
            //đã quá 15 phút
            if (totalCurrentMinutes - totalBuoiHocMinutes >= 15) {
                this.alertSensorFail();
                res.send('FAIL!! Ngoài giờ điểm danh');
                return;
            }
            //cập nhật lại trạng thái điểm danh của sinh viên
            let updated = await doRequest(host + '/CT_DiemDanh/Update', {
                query: {IDBUOIHOC: myobj.IDBUOIHOC, IDLSV: myobj.IDLSV},
                newValue: {DADIEMDANH: true},
            });

            if (updated == 0) {
                res.send('FAIL!! Sinh viên đã điểm danh trước đó');
                this.alertSensorFail();
                return;
            }
            //phát hiện gian lận và cập nhật vào ghi chú nếu có
            var GHICHU = cheatDetector.dectect(myobj.IDBUOIHOC, myobj.IP);
            if (GHICHU != '');
            await doRequest(host + '/CT_DiemDanh/Update', {
                query: {IDBUOIHOC: myobj.IDBUOIHOC, IDLSV: myobj.IDLSV},
                newValue: {GHICHU},
            });

            //điểm gửi tin nhắn về cho client thông tin điểm dan
            diemDanh(myobj.IDLSV, myobj.IDBUOIHOC, GHICHU);
            this.alertSensorSuccess();
            res.send('SUCCESS!! Đã điểm danh 1 sinh viên || ' + GHICHU);
        } catch (error) {
            this.alertSensorFail();
            res.send('FAIL!! ' + error.message);
        }
    };
}

module.exports = new SensorControllers();
