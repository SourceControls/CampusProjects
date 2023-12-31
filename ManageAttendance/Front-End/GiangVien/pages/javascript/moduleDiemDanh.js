import {server} from '../../../components/server/main.js'
var btnStartDiemDanh = document.querySelector('.btn-start-diem-danh')
var tblDSDiemDanh = document.querySelector('.tabledd')
var clockSpan = document.querySelector('.clock span')
var clockMinutes = 0
var clockSeconds = 0
var countDownInterval
var BUOIHOC = {}
var dsSV = await server.getList(server.tbl.SINHVIEN, {})
var dsCTLSV = await server.getList(server.tbl.CT_LOP_SV, {})
var dsCTDD = await server.getList(server.tbl.CT_DIEMDANH, {MALOPHP: BUOIHOC.MALOPHP})
var dsSVTheoBuoi

btnStartDiemDanh.onclick = async () => {
    //tạo dữ liệu CT điểm danh trong csdl
    let dsIDLSVTheoBuoi = await server.getList(server.tbl.CT_LOP_SV, {MALOPHP: BUOIHOC.MALOPHP})
    if (!dsIDLSVTheoBuoi.length) {
        alert('Lớp không có sinh viên')
        return
    }
    for (let index = 0; index < dsIDLSVTheoBuoi.length; index++) {
        let e = dsIDLSVTheoBuoi[index]
        server.insert(server.tbl.CT_DIEMDANH, {
            IDBUOIHOC: BUOIHOC.IDBUOIHOC,
            IDLSV: e.IDLSV,
            DADIEMDANH: false,
            GHICHU: '',
        })
        dsCTDD.push({IDBUOIHOC: BUOIHOC.IDBUOIHOC, IDLSV: e.IDLSV, DADIEMDANH: false, GHICHU: ''})
    }
    //init start time
    let STARTTIME = new Date().getHours() + ':' + new Date().getMinutes()
    server.update(server.tbl.BUOIHOC, {
        query: {IDBUOIHOC: BUOIHOC.IDBUOIHOC},
        newValue: {
            STARTTIME,
            SUBMITTED: false,
            IDLGVSUBMITTED: window.localStorage.getItem('TENDN'),
        },
    })

    initClock(14, 59)
    btnStartDiemDanh.disabled = true
    renderDanhSachDiemDanh(true)
}

function initClock(minutes, secconds) {
    //bắt đầu đếm thời gian
    clockMinutes = minutes
    clockSeconds = secconds
    if (countDownInterval) clearInterval(countDownInterval)
    countDownInterval = setInterval(() => {
        if (clockMinutes == 0 && clockSeconds == 0) return
        clockSeconds -= 1
        if (clockSeconds == 0) {
            clockMinutes -= 1
            clockSeconds = 59
        }

        //hết thời gian điểm danh, submit và load lại ds sinh viên
        if (clockMinutes < 0) {
            clockMinutes = 0
            clockSeconds = 0
            clearInterval(countDownInterval)
            countDownInterval
            submitAndReloadTblDSDD()
            alert('Hết thời gian điểm danh! ')
        }
        clockSpan.innerText = 'Thời gian còn lại: ' + clockMinutes + ':' + clockSeconds
    }, 1000)
}

function submitAndReloadTblDSDD() {
    btnStartDiemDanh.disabled = true
    server.update(server.tbl.BUOIHOC, {
        query: {IDBUOIHOC: BUOIHOC.IDBUOIHOC},
        newValue: {
            SUBMITTED: true,
        },
    })
    clockSpan.innerHTML = 'Đã điểm danh'
    renderDanhSachDiemDanh()
}

async function renderBtnsHuyDiemDanh() {
    let rows = document.querySelectorAll('.tabledd tr')
    rows.forEach((e) => {
        e.innerHTML += `
      <td data-set="${e.dataset.set}">
      <button id="${e.id}" class="btn btn-success btn-sm mb-0 w-100 btn-huy-diem-danh" style="font-size:100%">Điểm Danh / Đánh Vắng</button>
      </td>
    `
    })

    //init btn hủy điểm danh
    let btnsHuyDiemDanh = document.querySelectorAll('.btn-huy-diem-danh')
    btnsHuyDiemDanh.forEach((e) => {
        e.onclick = async (b) => {
            let MASV = b.target.id
            let IDLSV = (await server.getList(server.tbl.CT_LOP_SV, {MASV, MALOPHP: BUOIHOC.MALOPHP}))[0].IDLSV
            let DADIEMDANH = false
            if (document.querySelector(`#TTDIEMDANH-${MASV}`).innerText.includes('V')) {
                DADIEMDANH = true
            }
            let rs = await server.update(server.tbl.CT_DIEMDANH, {
                query: {IDBUOIHOC: BUOIHOC.IDBUOIHOC, IDLSV},
                newValue: {
                    DADIEMDANH,
                },
            })

            if (rs) {
                dsCTDD.forEach((e) => {
                    if (e.IDLSV == IDLSV && e.IDBUOIHOC == BUOIHOC.IDBUOIHOC) e.DADIEMDANH = DADIEMDANH
                })

                if (DADIEMDANH) {
                    alert('Điểm danh thành công')
                    document.querySelector(`#TTDIEMDANH-${MASV}`).innerText = 'Có mặt'
                } else {
                    alert('Đánh vắng thành công')
                    document.querySelector(`#TTDIEMDANH-${MASV}`).innerText = 'Vắng'
                }
            }
        }
    })
}

async function renderDanhSachDiemDanh(needRenderBtnsHuyDiemDanh = false) {
    //danh sách sinh viên theo buổi học
    let dsCTDDTheoBuoi = dsCTDD.filter((e) => e.IDBUOIHOC == BUOIHOC.IDBUOIHOC)
    let dsCTLSVTheoBuoi = innerJoin(dsCTLSV, dsCTDDTheoBuoi, 'IDLSV')
    dsSVTheoBuoi = innerJoin(dsSV, dsCTLSVTheoBuoi, 'MASV')
    tblDSDiemDanh.innerHTML = ''
    dsSVTheoBuoi.forEach((e) => {
        if (e.DADIEMDANH) {
            e.DADIEMDANH = 'Có mặt'
        } else {
            e.DADIEMDANH = 'Vắng'
        }
        tblDSDiemDanh.innerHTML += `
                    <tr data-set="${e.HINH}" id="${e.MASV}">
                    <td>${e.MASV}</td>
                    <td>${e.HOTEN}</td>
                    <td id="TTDIEMDANH-${e.MASV}">${e.DADIEMDANH}</td>
                    <td>${e.GHICHU}</td>
                  </tr>
    `
    })

    //init row click để hiển thị ảnh
    let rows = document.querySelectorAll('.tabledd tr')
    rows.forEach((e) => {
        e.onclick = (b) => {
            document.querySelector('.sv-img').src = b.target.parentElement.dataset.set
        }
    })

    if (needRenderBtnsHuyDiemDanh) renderBtnsHuyDiemDanh()
}

function innerJoin(ds1, ds2, fieldName) {
    let rs = []
    ds1.forEach((e) => {
        ds2.forEach((b) => {
            if (e[fieldName] == b[fieldName]) {
                rs.push({...e, ...b})
            }
        })
    })
    return rs
}

//show popup diem danh
export default function initBtnsDiemDanh() {
    var btnsDiemDanh = document.querySelectorAll('.btn-dd2') //popup
    btnsDiemDanh.forEach((e) => {
        e.onclick = async (b) => {
            //init ban đầu
            if (countDownInterval) clearInterval(countDownInterval)
            tblDSDiemDanh.innerHTML = ''
            btnStartDiemDanh.disabled = true
            let [IDBUOIHOC, TENMON] = b.target.dataset.set.split('&')
            BUOIHOC = (await server.getList(server.tbl.BUOIHOC, {IDBUOIHOC: parseInt(IDBUOIHOC)}))[0]
            //thông tin lớp học
            let currentMonth = (new Date().getMonth() + 1).toString()
            if (currentMonth.length == 1) {
                currentMonth = '0' + currentMonth
            }
            let currentDay = new Date().getDate().toString()
            if (currentDay.length == 1) {
                currentDay = '0' + currentDay
            }
            let currentDate = new Date().getFullYear() + '-' + currentMonth + '-' + currentDay
            document.querySelector(
                '.ddText',
            ).innerHTML = `<p><b>Môn học: ${TENMON}</b></p><p>Ngày: ${BUOIHOC.NGAY} </p>`
            console.log(!BUOIHOC.STARTTIME, BUOIHOC.NGAY, currentDate)

            if (BUOIHOC.SUBMITTED) {
                //đã điểm danh xong rồi
                btnStartDiemDanh.disabled = true
                clockSpan.innerHTML = 'Đã điểm danh'
                renderDanhSachDiemDanh()
            } else if (!BUOIHOC.SUBMITTED && BUOIHOC.STARTTIME) {
                //đang điểm danh dở và chưa submit
                let currentHour = new Date().getHours()
                let currentMinutes = new Date().getMinutes()
                let [buoiHocHour, buoiHocMinutes] = BUOIHOC.STARTTIME.split(':')

                let totalCurrentMinutes = parseInt(currentHour) * 60 + parseInt(currentMinutes)
                let totalBuoiHocMinutes = parseInt(buoiHocHour) * 60 + parseInt(buoiHocMinutes)

                //đã quá 15 phút
                if (totalCurrentMinutes - totalBuoiHocMinutes >= 15) {
                    submitAndReloadTblDSDD()
                }
                //nếu chưa thì điểm danh tiếp
                else {
                    let minutesLeft = 15 - (totalCurrentMinutes - totalBuoiHocMinutes) - 1
                    console.log('Điểm danh tiếp ' + minutesLeft)
                    btnStartDiemDanh.disabled = true
                    initClock(minutesLeft, currentMinutes)
                    renderDanhSachDiemDanh(true)
                }
            } else if (!BUOIHOC.STARTTIME && BUOIHOC.NGAY == currentDate) {
                //hôm nay học nhưng chưa điểm danh
                clockSpan.innerHTML = 'Chưa điểm danh'
                btnStartDiemDanh.disabled = false
            } else if (BUOIHOC.NGAY > currentDate) {
                //chưa tới ngày học
                clockSpan.innerHTML = 'Chưa tới ngày học'
                btnStartDiemDanh.disabled = true
            }
        }
    })
}

// =========== IO ==============

var socket = io.connect('https://iot-f77z.onrender.com')

// gửi và nhận vị trí của giảng viên
var MAGV = window.localStorage.getItem('TENDN')
var mp3_url = 'https://media.geeksforgeeks.org/wp-content/uploads/20190531135120/beep.mp3'

const audio = new Audio(mp3_url)
socket.on('connected', function (msg) {
    console.log(msg, {io})
})

socket.on('diemDanh', function (data) {
    let masv = dsCTLSV.filter((e) => e.IDLSV == data.IDLSV)[0].MASV
    dsCTDD.forEach((e) => {
        if (e.IDBUOIHOC == data.IDBUOIHOC && e.IDLSV == data.IDLSV) {
            e.DADIEMDANH = true
            e.GHICHU = data.GHICHU
            document.querySelectorAll(`tr#${masv} td`)[2].innerText = 'Có mặt'
            document.querySelectorAll(`tr#${masv} td`)[3].innerText = data.GHICHU
        }
    })
    let tensv = document.querySelectorAll(`tr#${masv} td`)[1].innerText
    audio.play()
    alert(`Có sinh viên điểm danh!\n${tensv}\n${data.GHICHU}`)
})
