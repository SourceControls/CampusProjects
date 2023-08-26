export default async function getQRSrc(IDBUOIHOC, IDLSV, size) {
    var deviceIP = await fetch('https://api.ipify.org?format=json')
        .then((res) => res.json())
        .then((res) => res.ip);
    // https://api.qrserver.com/v1/create-qr-code/?size=200x200&data=IDBUOIHOC__IDLSV__116.108.92.248__10.846578802035475__106.79880896438867
    let src =
        `https://api.qrserver.com/v1/create-qr-code/?` +
        `size=${size}x${size}&` +
        `data=${IDBUOIHOC}__${IDLSV}__${deviceIP}__10.846578802035475__106.79880896438867`;
    console.log(src);
    return src;
}
