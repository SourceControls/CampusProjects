import { ActionIcon, Group, Modal, Menu } from "@mantine/core";
import {
  IconPackageExport,
  IconDots,
  IconPackageImport,
  IconPencil,
  IconTrash,
} from "@tabler/icons-react";
import IngredientForm from "./../IngredientForm";
import { useDisclosure } from "@mantine/hooks";
import StockForm from "../stockForm";
import { useState } from "react";

function Options(props) {
  const [opened, { open, close }] = useDisclosure(false);
  const [type, setType] = useState(false);
  const [opening, setOpen] = useState(false);

  return (
    <>
      <Group spacing="md" position="center">
        <ActionIcon onClick={open}>
          <IconPencil />
        </ActionIcon>
        <Menu
          transitionProps={{ transition: "pop" }}
          withArrow
          position="bottom-end"
          withinPortal
        >
          <Menu.Target>
            <ActionIcon>
              <IconDots />
            </ActionIcon>
          </Menu.Target>
          <Menu.Dropdown>
            <Menu.Item
              icon={<IconPackageImport />}
              color="green"
              onClick={() => {
                setType(true);
                setOpen(true);
              }}
            >
              Nhập nguyên liệu
            </Menu.Item>
            <Menu.Item
              icon={<IconPackageExport />}
              color="red"
              onClick={() => {
                setType(false);
                setOpen(true);
              }}
            >
              Xuất nguyên liệu
            </Menu.Item>
          </Menu.Dropdown>
        </Menu>
      </Group>
      <Modal
        opened={opened}
        onClose={close}
        title="Chỉnh sửa nguyên liệu"
        centered
        yOffset="1vh"
        xOffset={0}
      >
        <IngredientForm {...props} update={true} {...props.item} />
      </Modal>
      <Modal
        opened={opening}
        onClose={() => setOpen(false)}
        title={type ? "Nhập nguyên liệu" : "Xuất nguyên liệu"}
        centered
        yOffset="1vh"
        xOffset={0}
      >
        <StockForm {...props} import={type} {...props.item} />
      </Modal>
    </>
  );
}

export default Options;
