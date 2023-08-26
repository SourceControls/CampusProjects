const locationCalc = require('../component/locationCalc');
const doRequest = require('../component/doRequest');

class CheatDetector {
    static listIPInBuoiHoc = {};
    addBuoiHoc(IDBUOIHOC) {
        if (!CheatDetector.listIPInBuoiHoc[IDBUOIHOC]) {
            CheatDetector.listIPInBuoiHoc[IDBUOIHOC] = [];
        }
    }
    removeBuoiHoc(IDBUOIHOC) {
        if (CheatDetector.listIPInBuoiHoc.hasOwnProperty(IDBUOIHOC)) {
            delete CheatDetector.listIPInBuoiHoc[IDBUOIHOC];
        }
    }
    addIP(IDBUOIHOC, IPorMAC) {
        if (!CheatDetector.listIPInBuoiHoc[IDBUOIHOC].includes(IPorMAC)) {
            CheatDetector.listIPInBuoiHoc[IDBUOIHOC].push(IPorMAC);
        }
    }
    dectect(IDBUOIHOC, IPorMAC) {
        this.addBuoiHoc(IDBUOIHOC);
        if (CheatDetector.listIPInBuoiHoc[IDBUOIHOC].includes(IPorMAC)) return 'WARN!!!: TRÙNG THIẾT BỊ ĐIỂM DANH';
        this.addIP(IDBUOIHOC, IPorMAC);
        return '';
    }
}

module.exports = new CheatDetector();
