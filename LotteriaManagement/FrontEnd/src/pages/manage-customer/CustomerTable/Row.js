import {Text, Group, Avatar, Badge} from '@mantine/core'
import Options from './Options'
import formatDate from '../../../utils/formatDate'

function Row(props) {
    return (
        <tr key={props.index}>
            <td>
                <Text fz='sm' c='dimmed'>
                    {props.item.customerId}
                </Text>
            </td>
            <td>
                <Text fz='sm' fw={500}>
                    {props.item.name}
                </Text>
            </td>
            <td>{props.item.phone}</td>
            <td>{props.item.email}</td>
            <td>{props.item.address}</td>
            <td>
                <Badge>{props.item.point}</Badge>
            </td>
            <td>{formatDate(props.item.createdTime)[0]}</td>
            <td>{props.item.createdUser}</td>
            <td>{formatDate(props.item.updatedTime)[0]}</td>
            <td>{props.item.updatedUser}</td>
            <td>
                <Options {...props}></Options>
            </td>
        </tr>
    )
}

export default Row
