import {Text, Group, Avatar, Badge, ActionIcon} from '@mantine/core'
import {IconChevronDownLeft, IconChevronRight} from '@tabler/icons-react'
import {useState} from 'react'
import Price from '../../component/Price'
import Detail from './Detail'
import Options from './Options'
import formatDate from '../../../utils/formatDate'

function getItemStatusColor(status) {
    if (status.toUpperCase() == 'CANCELLED') return 'red'
    if (status.toUpperCase() == 'PENDING') return 'yellow'
    console.log(status)
    return 'green'
}

function Row({item, index}) {
    const [showDetail, setShowDetail] = useState(false)
    const [order, setOrder] = useState(item)
    const handleClick = (e) => {
        setShowDetail(!showDetail)
    }
    const style = {
        transform: showDetail ? 'rotate(90deg)' : '',
        transition: 'transform 150ms ease', // smooth transition
    }
    return (
        <>
            <tr key={index}>
                <td>
                    <ActionIcon radius='50%' onClick={handleClick} style={style}>
                        <IconChevronRight />
                    </ActionIcon>
                </td>
                <td>
                    <Text fz='sm' c='dimmed'>
                        {order.orderId}
                    </Text>
                </td>
                <td>
                    <Text fz='sm' fw={500}>
                        {order.customerName}
                    </Text>
                </td>

                <td>
                    <Badge color={getItemStatusColor(order.status)}>{order.status}</Badge>
                </td>
                <td>
                    <Price data={parseFloat(order.totalMoney)} align='left'></Price>
                </td>
                <td>{formatDate(order.orderTime)[0]}</td>
                <td>{order.createdUser}</td>
                <td>{formatDate(order.canceledTime)[0]}</td>
                <td>{order.canceledUser}</td>
                <td>
                    <Options {...order} setOrder={setOrder}></Options>
                </td>
            </tr>
            {showDetail && <Detail {...order}></Detail>}
        </>
    )
}

export default Row
