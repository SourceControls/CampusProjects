import {Text, Group, Avatar, Badge} from '@mantine/core'
import formatDate from '../../../utils/formatDate'
import Options from './Options'

function Row(props) {
    return (
        <tr key={props.index}>
            <td>
                <Text fz='sm' c='dimmed'>
                    {props.item.userId}
                </Text>
            </td>
            <td>
                <Group spacing='sm'>
                    <Avatar size={50} src={props.item.image} radius={50} />
                    <Text fz='sm' fw={500}>
                        {props.item.name}
                    </Text>
                </Group>
            </td>
            <td>{props.item.phone}</td>
            <td>{props.item.email}</td>
            <td>{props.item.address}</td>

            <td>{formatDate(props.item.createdDate)[0]}</td>
            <td>{props.item.createdUser}</td>
            {/* <td>{formatDate(props.item.updatedTime)[0]}</td>
            <td>{props.item.updatedUser}</td> */}
            <td>
                <Options {...props}></Options>
            </td>
        </tr>
    )
}

export default Row
