import { Text, Group, Avatar, Badge } from "@mantine/core";
import Options from "./Options";
import formatDate from "../../../utils/formatDate";

function Row(props) {
  return (
    <tr key={props.index}>
      <td>
        <Text fz="sm" c="dimmed">
          {props.item.ingredientId}
        </Text>
      </td>
      <td>
        <Group spacing="sm">
          <Avatar size={50} src={props.item.image} radius={50} />
          <Text fz="sm" fw={500}>
            {props.item.name}
          </Text>
        </Group>
      </td>
      <td>
        {props.item.available == 1 ? (
          <Badge color={"green"}>Hiện hành</Badge>
        ) : (
          <Badge color={"red"}>Hết hàng</Badge>
        )}
      </td>
      <td>{props.item.unit}</td>
      <td>{props.item.inStock}</td>
      <td>{formatDate(props.item.createdTime)[0]}</td>
      <td>{props.item.createdUser}</td>
      <td>{formatDate(props.item.updatedTime)[0]}</td>
      <td>{props.item.updatedUser}</td>
      <td>
        <Options {...props}></Options>
      </td>
    </tr>
  );
}

export default Row;
