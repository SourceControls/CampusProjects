import {Text, Group, Avatar, Badge} from '@mantine/core'
import formatDate from '../../../utils/formatDate'
import Options from './Options'

function Row(props) {
    return (
        <tr key={props.index}>
            <td>
                <Text fz='sm' c='dimmed'>
                    {props.item.promoteId}
                </Text>
            </td>
            <td>
                <Text fz='sm' fw={500}>
                {props.item.name}
                </Text>
            </td>
            <td>
                <Badge color={'red'}> {props.item.discount}%</Badge>
            </td>
            <td>
                <Badge color={'green'}>{props.item.requirePoint}</Badge>
            </td>
            <td>
            {props.item.available == 1 ? (
                    <Badge color={'green'}>Hiện hành</Badge>
                ) : (
                    <Badge color={'red'}>Ngưng sử dụng</Badge>
                )}
            </td>
            <td>{formatDate(props.item.createdTime)[0]}</td>
            <td>{props.item.createUser}</td>
            <td>
                <Options {...props}></Options>
            </td>
        </tr>
    )
}

export default Row
