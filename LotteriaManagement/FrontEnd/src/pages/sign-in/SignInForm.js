import {BackgroundImage, Box, Button, Center, Paper, PasswordInput, Stack, Text, TextInput, Title} from '@mantine/core'
import {useForm} from '@mantine/form'
import {signIn} from '../../utils/service'

const handleSignIn = async (data) => {
    // localStorage.clear()
    signIn(data).then((rs) => {
        console.log(rs.data)
        localStorage.clear()
        localStorage.setItem('role', rs.data[0].role[0].roleId)
        localStorage.setItem('username', data.username)
        localStorage.setItem('role', JSON.stringify(rs.data[0].role))
        localStorage.setItem('userId', rs.data[0].userId)
        localStorage.setItem('Authorization', rs.Authorization)

        // //   if(localStorage.getItem('role') == '1')
        window.location.href = '/'
    })
}

function SignInForm() {
    const form = useForm({
        initialValues: {username: '', password: ''},
        validate: {
            username: (value) => (value.length > 0 ? null : 'Không được để trống'),
            password: (value) => (value.length > 0 ? null : 'Mật khẩu không được để trống'),
        },
    })
    return (
        <Center h='100%'>
            <Paper shadow='lg'>
                <form
                    onSubmit={form.onSubmit((values) => {
                        handleSignIn(values)
                    })}>
                    <Stack px='24px' py='32px' bg='white' w={350} style={{borderRadius: '12px'}} spacing='xl'>
                        <Title order={1} align='center' color='red'>
                            Lotteria Management
                        </Title>
                        <Title order={3} align='center'>
                            Đăng nhập
                        </Title>
                        <TextInput
                            label='Tên đăng nhập'
                            placeholder='Tên đăng nhập...'
                            withAsterisk
                            {...form.getInputProps('username')}
                            data-autofocus
                        />
                        <PasswordInput
                            label='Mật khẩu'
                            placeholder='Mật khẩu...'
                            withAsterisk
                            {...form.getInputProps('password')}
                            data-autofocus
                        />
                        <Button mx='auto' type='submit'>
                            Đăng nhập
                        </Button>
                    </Stack>
                </form>
            </Paper>
        </Center>
    )
}

export default SignInForm
