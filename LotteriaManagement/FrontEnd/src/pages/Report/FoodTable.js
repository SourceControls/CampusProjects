import {Avatar, Badge, Group, Paper, ScrollArea, Stack, Text, Title} from '@mantine/core'
import {IconTemperature} from '@tabler/icons-react'
import 'chart.js/auto'
import {Chart} from 'react-chartjs-2'
import Price from '../component/Price'

function FoodTable({foodSale}) {
    return (
        <Stack justify='flex-start'>
            <Title order={3} align='center'>
                Số lượng bán theo sản phẩm:
            </Title>
            <ScrollArea h={400}>
                {foodSale &&
                    foodSale.map((item) => (
                        <Paper shadow='xl' p='sm' withBorder>
                            <Group>
                                <Avatar
                                    src={
                                        IconTemperature.image ||
                                        'https://static.kfcvietnam.com.vn/images/items/lg/D1-new.jpg?v=4aj0lg'
                                    }></Avatar>
                                <Stack align='flex-start' justify='flex-start' spacing={8}>
                                    <Text fw='bold'>{item.name}</Text>
                                    <Text>
                                        Số lượng:
                                        <Badge color='blue' ml='md' size='lg'>
                                            {item.quantity}
                                        </Badge>
                                    </Text>
                                    <Group>
                                        Doanh thu:
                                        <Price data={item.totalRevenue} />
                                    </Group>
                                </Stack>
                            </Group>
                        </Paper>
                    ))}
            </ScrollArea>
        </Stack>
    )
}

export default FoodTable
