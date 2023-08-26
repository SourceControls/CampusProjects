function formatDate(date) {
    if (!date) return ['', '', '']
    // if (date.includes('.000Z')) {
    //     date = date.replace('T', ' ').replace('.000Z', '')
    // }
    date = new Date(date).toLocaleString('vi-VN').split(' ')
    // ['YYYY-MM-DD HH:mm:ss', 'YYYY-MM-DD', 'HH:mm:ss']
    return [date[1] + ' ' + date[0], date[1], date[0]]
}

export default formatDate
