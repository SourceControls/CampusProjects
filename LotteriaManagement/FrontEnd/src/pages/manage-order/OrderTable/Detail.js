import {Table, Text, Group, Avatar, Badge, Paper, Title, Stack, Divider} from '@mantine/core'
import Price from '../../component/Price'
import Row from './Row'
import {primaryColor} from './../../../components/globalStyle'
function Detail(props) {
    return (
        <tr>
            <td colspan='11' style={{'vertical-align': 'top'}}>
                <Group position='right' align='flex-start'>
                    <Table w='800px' withBorder>
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Món ăn</th>
                                <th>Giá</th>
                                <th style={{'text-align': 'center'}}>Số lượng</th>
                            </tr>
                        </thead>
                        <tbody>
                            {props.details.map((item, index) => (
                                <tr>
                                    <td>
                                        <Text fz='sm' c='dimmed'>
                                            {index + 1}
                                        </Text>
                                    </td>
                                    <td>
                                        <Group spacing='sm'>
                                            <Avatar
                                                size={40}
                                                src={
                                                    item.foodImage ||
                                                    'https://vinmec-prod.s3.amazonaws.com/images/20210411_144423_886364_bot-ngot.max-1800x1800.jpg'
                                                }
                                                radius={40}
                                            />
                                            <Text fz='sm' fw={500}>
                                                {item.foodId}
                                            </Text>
                                        </Group>
                                    </td>
                                    <td>
                                        <Price data={item.price} align='left'></Price>
                                    </td>
                                    <td align='center'>x {item.quantity}</td>
                                </tr>
                            ))}
                        </tbody>
                    </Table>
                    <Stack bg='#f8f8f8' p='md' w='300px'>
                        <Group position='apart'>
                            <Text>Tổng phụ:</Text>
                            <Price data={props.subTotal} align='right' />
                        </Group>
                        <Group position='apart'>
                            <Text>Khuyến mãi :</Text>
                            <Text align='right' color='green'>
                                {props.discount} %
                            </Text>
                        </Group>
                        <Group position='apart'>
                            <Text>Khuyến mãi (thành tiền):</Text>
                            <Price data={-props.discountInmoney} align='right' />
                        </Group>
                        <Group position='apart'>
                            <Text>Điểm đã dùng:</Text>
                            <Text align='right' color='red'>
                                {props.requirePoint}
                            </Text>
                        </Group>
                        <Divider size='md' color={primaryColor} />
                        <Group position='apart'>
                            <Text size='lg' fw='bold'>
                                Tổng:
                            </Text>
                            <Price data={props.totalMoney} align='right' />
                        </Group>
                        <Group position='apart'>
                            <Text>Điểm tích được:</Text>
                            <Text align='right' color='green'>
                                {props.point}
                            </Text>
                        </Group>
                    </Stack>
                </Group>
            </td>
        </tr>
    )
}

export default Detail
