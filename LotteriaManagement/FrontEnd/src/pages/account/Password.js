import {Button, PasswordInput, Stack, TextInput} from '@mantine/core'
import {useForm} from '@mantine/form'
import {changePassword} from '../../utils/service'

function Password() {
    const form = useForm({
        initialValues: {username: localStorage.email, oldPassword: '', newPassword: '', renew: ''},
        validate: {
            newPassword: (value) => (value.length <= 6 ? 'Mật khẩu ít nhất 6 kí tự' : null),
            renew: (value, values) => (value != values.newPassword ? 'Mật khẩu không trùng khớp' : null),
        },
    })
    const handleSubmit = () => {
        changePassword(form.values)
    }
    return (
        <form onSubmit={form.onSubmit((values) => console.log(values))}>
            <Stack>
                <PasswordInput
                    label='Mật khẩu hiện tại'
                    placeHolder='Nhập mật khẩu hiện tại...'
                    {...form.getInputProps('oldPassword')}></PasswordInput>
                <PasswordInput
                    label='Mật khẩu mới'
                    placeHolder='Nhập mật khẩu mới...'
                    {...form.getInputProps('newPassword')}></PasswordInput>
                <PasswordInput
                    label='Nhập lại mật khẩu mới'
                    placeHolder='Nhập lại mật khẩu mới...'
                    {...form.getInputProps('renew')}></PasswordInput>
                <Button type='submit'>Lưu</Button>
            </Stack>
        </form>
    )
}

export default Password
