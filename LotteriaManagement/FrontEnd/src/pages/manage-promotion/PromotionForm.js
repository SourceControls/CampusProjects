import {Button, NumberInput, Stack, TextInput} from '@mantine/core'
import {useForm} from '@mantine/form'
import { addPromotion, updatePromotion } from '../../utils/service';

function Promotion(props) {
    const form = useForm({
        // initialValues: {name: '', discount: 0, requirePoint: 0},
        initialValues: props.promoteId
        ? {
            promoteId: props.promoteId,
            name: props.name,
            discount: props.discount,
            requirePoint: props.requirePoint,
            userId: parseInt(localStorage.userId),
          }
        : {
            name: "",
            discount: "",
            requirePoint: "",
            userId: parseInt(localStorage.userId),
          },
        validate: {
            name: (value) => (value.length < 2 ? 'Tên phải có ít nhất 2 kí tự' : null),
        },
    })

    const handleSubmit = async (data) => {
        if (props.update) {
          updatePromotion(data).then((rs) => {
            if (rs.state) {
              props.handleUpdate(rs.data[0], props.index);
            }
          });
        } else {
          addPromotion(data).then((rs) => {
            if (rs.state) {
              props.handleUpdate(rs.data[0], -1);
              form.setValues({
                name: "",
                discount: "",
                requirePoint: "",
              });
            }
          });
        }
      };
    return (
        <form onSubmit={form.onSubmit((value=>handleSubmit(value)))}>
            <Stack>
                <TextInput
                    {...form.getInputProps('name')}
                    label='Tên KM'
                    placeHolder='Nhập tên KM...'
                    withAsterisk></TextInput>
                <NumberInput
                    {...form.getInputProps('discount')}
                    label='Tỉ lệ KM'
                    placeHolder='Nhập tỉ lệ KM...'
                    withAsterisk></NumberInput>
                <NumberInput
                    {...form.getInputProps('requirePoint')}
                    label='Điểm tiêu dùng'
                    placeHolder='Nhập điểm tiêu dùng...'
                    withAsterisk></NumberInput>
                <Button type='submit'>Lưu</Button>
            </Stack>
        </form>
    )
}

export default Promotion
