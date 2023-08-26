import {
  Title,
  Stack,
  Text,
  ActionIcon,
  Group,
  Modal,
  Select,
} from "@mantine/core";
import { useDisclosure } from "@mantine/hooks";
import {
  IconPlus,
} from "@tabler/icons-react";
import { primaryColor } from "../../../components/globalStyle";
import CustomerForm from "../../manage-customer/CustomerForm";
import { useState, useEffect } from "react";
import { forwardRef } from 'react';

function Header(props) {
  const [opened, { open, close }] = useDisclosure(false);


  return (
    <>
      <Modal
        opened={opened}
        onClose={close}
        title="Thêm khách hàng"
        centered
        yOffset="1vh"
        xOffset={0}
      >
        <CustomerForm></CustomerForm>
      </Modal>
      <Stack>
        <Title>Order hiện tại</Title>
        <Group position="apart">
          {props.customers && (
            <Select
              data={props.customers}
              searchable
              placeholder="Chọn khách hàng"
              onChange={props.setCustomerId}
              clearable
              transitionProps={{
                transition: "pop-top-left",
                duration: 80,
                timingFunction: "ease",
              }}
              // onChange={props.setPromotion}
            ></Select>
          )}
          <ActionIcon title="Thêm mới khách hàng" onClick={open}>
            <IconPlus />
          </ActionIcon>
        </Group>
        <Group>
          <Text>Điểm tích lũy:</Text>
          <Text fw="bold" color={primaryColor}>
            {props.point}
          </Text>
        </Group>
      </Stack>
    </>
  );
}

export default Header;
