import {Stack, Title} from '@mantine/core'
import 'chart.js/auto'
import {Chart} from 'react-chartjs-2'

function CustomerTable({customer}) {
    return (
        <Stack w={'50%'} h='100%'>
            <Title order={3} align='center'>
                Thống kê tiền mua hàng của khách
            </Title>
            <>
                {customer && customer.length != 0 && (
                    <Chart
                        type='bar'
                        data={{
                            labels: customer.map((i) => i.name),
                            datasets: [
                                {
                                    axis: 'y',
                                    label: 'Tiền mua hàng',
                                    data: customer.map((i) => i.totalRevenue),
                                    // backgroundColor: 'rgba(255, 99, 132, 0.2)',
                                    // borderColor: 'rgb(255, 159, 64)',
                                    indexAxis: 'y',
                                    barPercentage: 0.5,
                                },
                            ],
                        }}
                    />
                )}
            </>
        </Stack>
    )
}

export default CustomerTable
