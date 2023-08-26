import { Button, Stack, TextInput } from "@mantine/core";
import { useState } from "react";
import { useForm } from "@mantine/form";
import uploadImg from "../../utils/uploadImage";
import { addIngredient, updateIngredient } from "../../utils/service";
import { ImageDropZone } from "../component/ImageDropZone";

function IngredientForm(props) {
  const form = useForm({
    initialValues: props.ingredientId
      ? {
          ingredientId: props.ingredientId,
          name: props.name,
          unit: props.unit,
          image: props.image,
          userId: parseInt(localStorage.userId),
          file: "",
        }
      : {
          name: "",
          file: "",
          unit: "",
          image: "",
          userId: parseInt(localStorage.userId),
        },
    validate: {
      name: (value) =>
        value.length < 2 ? "Tên phải có ít nhất 2 kí tự" : null,
      unit: (value) => (!value.length ? "Đơn vị không được để trống" : null),
    },
  });

  const handleSubmit = async (data) => {
    if (props.update) {
      if (form.values.file) {
        const image = await uploadImg(form.values.file);
        form.values.image = image;
      }
      updateIngredient(data).then((rs) => {
        if (rs.state) {
          props.handleUpdate(rs.data[0], props.index);
        }
      });
    } else {
      if (form.values.file) {
        const image = await uploadImg(form.values.file);
        form.values.image = image;
      }
      addIngredient(data).then((rs) => {
        if (rs.state) {
          props.handleUpdate(rs.data[0], -1);
          form.setValues({
            name: "",
            unit: "",
            image: "",
          });
        }
      });
    }
  };

  return (
    <form onSubmit={form.onSubmit((values) => handleSubmit(values))}>
      <Stack>
        <ImageDropZone form={form} />
        <TextInput
          label="Tên nguyên liệu"
          placeHolder="Nhập tên nguyên liệu..."
          {...form.getInputProps("name")}
        ></TextInput>
        <TextInput
          label="Đơn vị"
          placeHolder="Nhập Đơn vị..."
          {...form.getInputProps("unit")}
        ></TextInput>
        <Button type="submit">Lưu</Button>
      </Stack>
    </form>
  );
}

export default IngredientForm;
