export default function excute(api, data) {
    console.log(api);
    return fetch(api, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Access-Control-Allow-Origin': '*',
        },
        body: JSON.stringify(data),
    })
        .then((res) => {
            return res.json();
        })
        .catch((err) => {
            return false;
        });
}
