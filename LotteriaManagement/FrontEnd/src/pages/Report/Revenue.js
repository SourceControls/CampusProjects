import {Stack, Title} from '@mantine/core'
import 'chart.js/auto'
import {Chart} from 'react-chartjs-2'
import Price from '../component/Price'

function Revenue({date, revenue}) {
    if (!revenue || !revenue[0][date]) return <></>
    return (
        <Stack align='center' justify='center'>
            <Title order={3} align='center'>
                Doanh thu
            </Title>
            <Chart
                type='doughnut'
                data={{
                    labels: ['Tiền mặt', 'CK ngân hàng', 'Ví điện tử', 'Khác'],
                    datasets: [
                        {
                            label: 'Thực Thu',
                            data: [
                                revenue[0][date].cash,
                                revenue[0][date].banking,
                                revenue[0][date].eWallet,
                                revenue[0][date].other,
                            ],
                            backgroundColor: ['#006DAA', '#FF6347', '#7A37B8', '#0088B6'],
                            hoverOffset: 4,
                        },
                    ],
                }}
            />
            <Title order={3} align='center'>
                Tổng: <Price data={revenue[0][date].totalRevenue} />
            </Title>
        </Stack>
    )
}

export default Revenue
