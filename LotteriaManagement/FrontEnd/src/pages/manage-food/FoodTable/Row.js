import {Text, Group, Avatar, Badge} from '@mantine/core'
import Price from '../../component/Price'
import Options from './Options'
import formatDate from '../../../utils/formatDate'
import {useState} from 'react'
function Row(props) {
    const [food, setFood] = useState(props.item)
    return (
        <tr key={props.index}>
            <td>
                <Text fz='sm' c='dimmed'>
                    {food.foodId}
                </Text>
            </td>
            <td>
                <Group spacing='sm'>
                    <Avatar
                        size={50}
                        src={food.image || 'https://static.kfcvietnam.com.vn/images/items/lg/D1-new.jpg?v=4aj0lg'}
                        radius={50}
                    />
                    <Text fz='sm' fw={500}>
                        {food.name}
                    </Text>
                </Group>
            </td>
            <td>
                {food.available == 1 ? <Badge color={'green'}>Hiện hành</Badge> : <Badge color={'red'}>Hết hàng</Badge>}
            </td>
            <td>{food.unit}</td>
            <td>{food.currentPrice && <Price data={parseFloat(food.currentPrice.price)} align='left'></Price>}</td>
            <td align='center'>
                <Badge>{food.sold || 0}</Badge>
            </td>
            <td>{formatDate(food.createdTime)[0]}</td>
            <td>{food.createdUser}</td>
            <td>{formatDate(food.updatedTime)[0]}</td>
            <td>{food.updatedUser}</td>
            <td>
                <Options setFood={setFood} {...food}></Options>
            </td>
        </tr>
    )
}

export default Row
