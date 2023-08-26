// init app
const app = require('./component/app');

//init sever and socket
const io = require('./component/IO').init(app, 8080);

function diemDanh(IDLSV, IDBUOIHOC, GHICHU) {
    console.log('SV điểm danh: ', IDLSV, GHICHU);
    io.emit('diemDanh', {IDLSV, IDBUOIHOC, GHICHU});
}
const host = 'https://iot-f77z.onrender.com';
module.exports = {diemDanh, host};
//init route
const routes = require('./routes/index.routes');
routes(app);
