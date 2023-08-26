import {Divider, Group, Paper, Stack, Title} from '@mantine/core'
import CustomerTable from './CustomerTable'
import FoodTable from './FoodTable'
import Revenue from './Revenue'
import {DateInput} from '@mantine/dates'
import {useEffect, useState} from 'react'
import {report} from '../../utils/service'

function Report() {
    const [date, setDate] = useState(new Date())
    const [data, setData] = useState()
    useEffect(() => {
        report(date.toLocaleDateString('en-US')).then((rs) => setData(rs.data))
    }, [date])
    return (
        <Paper p='xl' h='100%'>
            <Stack>
                <Title order={1} align='center'>
                    Thống kê trong ngày:{' '}
                </Title>
                <DateInput value={date} onChange={setDate} maw={400} mx='auto' valueFormat='DD/MM/YYYY' />
            </Stack>
            {data ? (
                <Group w={'100%'} spacing='lg' position='apart' align='flex-start' mt='64px'>
                    <CustomerTable date={date.toLocaleDateString('en-US')} customer={data.customer}></CustomerTable>
                    <Divider orientation='vertical' />
                    <Revenue date={date.toLocaleDateString('en-US')} revenue={data.revenue}></Revenue>
                    <Divider orientation='vertical' />
                    <FoodTable date={date.toLocaleDateString('en-US')} foodSale={data.foodSale}></FoodTable>
                </Group>
            ) : (
                <Title order={1} align='center' mt='xl'>
                    Chưa có dữ liệu...
                </Title>
            )}
        </Paper>
    )
}

export default Report
