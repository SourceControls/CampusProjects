import {Button, Stack, TextInput} from '@mantine/core'
import {useForm} from '@mantine/form'
import {addCustomer, updateCustomer} from '../../utils/service'
import {toast} from 'react-toastify'

function CustomerForm(props) {
    const form = useForm({
        // initialValues: {name: '', customerEmail: '', phone: '', address: '', userId: parseInt(localStorage.userId)},
        initialValues: props.customerId
            ? {
                  customerId: props.customerId,
                  name: props.name,
                  customerEmail: props.email,
                  phone: props.phone,
                  address: props.address,
                  userId: parseInt(localStorage.userId),
              }
            : {
                  name: '',
                  customerEmail: '',
                  phone: '',
                  address: '',
                  userId: parseInt(localStorage.userId),
              },
        validate: {
            name: (value) => (value.length < 2 ? 'Tên phải có ít nhất 2 kí tự' : null),
            phone: (value) => (value.match(/(84|0[3|5|7|8|9])+([0-9]{8})\b/g) ? null : 'Số điện thoại không đúng!'),
        },
    })

    const handleSubmit = async (data) => {
        if (props.update) {
            updateCustomer(data)
                .then((rs) => {
                    if (rs.state) {
                        console.log(rs.data[0])
                        props.handleUpdate(rs.data[0], props.index)
                    } else {
                        toast.error(rs.message)
                    }
                })
                .catch((error) => {
                    toast.error(error)
                })
        } else {
            addCustomer(data)
                .then((rs) => {
                    if (rs.state) {
                        props.handleUpdate(rs.data[0], -1)
                        form.setValues({
                            name: '',
                            customerEmail: '',
                            phone: '',
                            address: '',
                        })
                    }
                })
                .catch((error) => {
                    toast.error(error)
                })
        }
    }
    return (
        <form onSubmit={form.onSubmit((value) => handleSubmit(value))}>
            <Stack>
                <TextInput
                    {...form.getInputProps('name')}
                    label='Họ tên'
                    placeHolder='Nhập họ tên...'
                    withAsterisk></TextInput>
                <TextInput
                    {...form.getInputProps('phone')}
                    label='Số điện thoại'
                    placeHolder='Nhập số điện thoại...'
                    withAsterisk></TextInput>
                <TextInput
                    {...form.getInputProps('customerEmail')}
                    label='Email'
                    placeHolder='Nhập email...'></TextInput>
                <TextInput {...form.getInputProps('address')} label='Địa chỉ' placeHolder='Nhập địa chỉ...'></TextInput>
                <Button type='submit'>Lưu</Button>
            </Stack>
        </form>
    )
}

export default CustomerForm
