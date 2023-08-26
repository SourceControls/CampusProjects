import {
  Button,
  Stack,
  TextInput,
  MultiSelect,
  PasswordInput,
  Group,
  Radio,
} from "@mantine/core";
import { useForm } from "@mantine/form";
import { ImageDropZone } from "../component/ImageDropZone";
import uploadImg from "../../utils/uploadImage";
import { IconEye, IconEyeOff } from "@tabler/icons-react";
import { addUser, updateUser } from "../../utils/service";
// import {useState} from 'react'

function User(props) {
  // const [checked, setChecked] = useState(false)
  const form = useForm({
    initialValues: props.userId
      ? {
          updatedUserId: props.userId,
          name: props.name,
          userEmail: props.email,
          phone: props.phone,
          password: props.password,
          listRole: props.listRole,
          image: props.image,
          status: props.status,
          file: "",
          userId: parseInt(localStorage.userId),
        }
      : {
          name: "",
          userEmail: "",
          phone: "",
          password: "",
          image: "",
          file: "",
          userId: parseInt(localStorage.userId),
          listRole: [],
        },
    validate: {
      name: (value) =>
        value.length < 2 ? "Tên phải có ít nhất 2 kí tự" : null,
      phone: (value) =>
        value.match(/(84|0[3|5|7|8|9])+([0-9]{8})\b/g)
          ? null
          : "Số điện thoại không đúng!",
      userEmail: (value) => {
        if (value.trim().length === 0) return "Không được bỏ trống email!";
        return /^\S+@\S+$/.test(value) ? null : "Email không hợp lệ";
      },
      password: (value) => {
        if (value.trim().length === 0) return "Không được bỏ trống mật khẩu!";
      },
    },
  });

  const handleSubmit = async (data) => {
    if (props.update) {
      if (form.values.file) {
        const image = await uploadImg(form.values.file);
        form.values.image = image;
      }
      console.log(data);
      updateUser(data).then((rs) => {
        if (rs.state) {
            // console.log(data);
          props.handleUpdate(rs.data[0], props.index);
        }
      });
    } 
    else {
      if (form.values.file) {
        const image = await uploadImg(form.values.file);
        form.values.image = image;
      }
      addUser(data).then((rs) => {
        if (rs.state) {
          props.handleUpdate(rs.data[0], -1);
          form.setValues({
            name: "",
            userEmail: "",
            phone: "",
            password: "",
            image: "",
            file: "",
          });
        }
      });
    }
}
    

    return (
      <form onSubmit={form.onSubmit((value) => handleSubmit(value))}>
        <Stack>
          <ImageDropZone form={form}></ImageDropZone>
          <TextInput
            {...form.getInputProps("name")}
            label="Họ tên"
            placeHolder="Nhập họ tên..."
            withAsterisk
          ></TextInput>
          <TextInput
            {...form.getInputProps("phone")}
            label="Số điện thoại"
            placeHolder="Nhập số điện thoại..."
            withAsterisk
          ></TextInput>
          {props.update ? (
            <TextInput
              {...form.getInputProps("userEmail")}
              label="Email"
              disabled
              placeHolder="Nhập email..."
            ></TextInput>
          ) : (
            <TextInput
              {...form.getInputProps("userEmail")}
              label="Email"
              placeHolder="Nhập email..."
            ></TextInput>
          )}
          {props.update ? (
            <></>
          ) : (
            <PasswordInput
            {...form.getInputProps("password")}
            label="Mật khẩu"
            placeHolder="Nhập mật khẩu cho nhân viên mới..."
            visibilityToggleIcon={({ reveal, size }) =>
              reveal ? <IconEye size={size} /> : <IconEyeOff size={size} />
            }
          ></PasswordInput>
          )}
          {props.selectedData && (
            <MultiSelect
              data={props.selectedData}
              placeholder="Chọn role"
              {...form.getInputProps("listRole")}
              defaultValue={form.values.listRole}
              transitionProps={{
                transition: "pop-top-left",
                duration: 80,
                timingFunction: "ease",
              }}
              // onChange={setValue}
            ></MultiSelect>
          )}
          {props.update && (
            <Radio.Group
              name="status"
              label="Trạng thái"
              {...form.getInputProps("status")}
              defaultValue={form.values.status}
            >
              <Group mt="xs">
                <Radio value="active" label="Đang hoạt động" />
                <Radio value="inactive" label="Khóa" />
              </Group>
            </Radio.Group>
          )}
          <Button type="submit">Lưu</Button>
        </Stack>
      </form>
    );
  };

export default User;
