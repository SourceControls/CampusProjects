import { ActionIcon, Group, Modal } from "@mantine/core";
import { IconPencil } from "@tabler/icons-react";
import CustomerForm from "../CustomerForm";
import { useDisclosure } from "@mantine/hooks";

function Options(props) {
  const [opened, { open, close }] = useDisclosure(false);

  return (
    <>
      <Group spacing="md" position="center">
        <ActionIcon onClick={open}>
          <IconPencil />
        </ActionIcon>
      </Group>
      <Modal
        opened={opened}
        onClose={close}
        title="Chỉnh sửa khách hàng"
        centered
        yOffset="1vh"
        xOffset={0}
      >
        <CustomerForm {...props} update={true} {...props.item} />
      </Modal>
    </>
  );
}

export default Options;
