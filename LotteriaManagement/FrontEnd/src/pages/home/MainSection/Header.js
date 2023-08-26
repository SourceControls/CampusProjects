import {
  Group,
  Input,
  Pagination,
  Select,
  Stack,
  Text,
  Title,
} from "@mantine/core";
import { IconSearch } from "@tabler/icons-react";
import { useState } from "react";

function Header(props) {
  return (
    <Stack>
      <Group>
        <Stack spacing={0}>
          <Title
            sx={(theme) => ({
              color: theme.fn.primaryColor("dark"),
            })}
          >
            Xin chào, Lotte!
          </Title>
          <Text color="dimmed">Luôn luôn lắng nghe, sẵn sàng thấu hiểu!</Text>
        </Stack>
        <form
          onSubmit={props.handleSubmitSearch}
          style={{ marginLeft: "auto" }}
        >
          <Input
            onKeyDown={(e) => {
                if (e.key === 'Enter') {
                    props.setSearchKey(e.target.value)
                    e.preventDefault();
                    // alert('hello')
                }
            }}
            icon={<IconSearch />}
            placeholder="Tìm kiếm..."
            w="300px"
          ></Input>
        </form>
        {props.listCategory && (
          <Select
            data={props.listCategory}
            // data={[
            //     {value: 'Tất cả', label: 'Tất cả'},
            //     {value: 'Món chính', label: 'Món chính'},
            //     {value: 'Thức uống', label: 'Thức uống'},
            //     {value: 'Món phụ', label: 'Món phụ'},
            //     {value: 'Kem', label: 'Kem'},
            // ]}
            placeholder='Chọn theo danh mục'
            transitionProps={{
              transition: "pop-top-left",
              duration: 80,
              timingFunction: "ease",
            }}
            onChange={(value) => props.setCurrentCategory((value))}
            
          ></Select>
        )}
      </Group>
      <Pagination
        total={props.totalPage}
        ml="auto"
        value={props.currentPage}
        onChange={props.setCurrentPage}
      />
    </Stack>
  );
}

export default Header;
