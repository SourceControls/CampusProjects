import {Tabs} from '@mantine/core'
import {useForm} from '@mantine/form'
import {IconInfoCircle, IconLock} from '@tabler/icons-react'
import {useEffect} from 'react'
import {useState} from 'react'
import {getUserInfo} from '../../utils/service'
import Password from './Password'
import Profile from './Profile'

function Account() {
    const [profileForm, setProfileForm] = useState(true)
    const form = useForm({
        initialValues: {userId: '', name: '', email: '', phone: '', image: '', file: ''},
        validate: {
            name: (value) => (value.length < 2 ? 'Tên phải có ít nhất 2 kí tự' : null),
        },
    })
    useEffect(() => {
        getUserInfo(localStorage.userId).then((rs) => {
            form.setValues({...rs.data[0], file: ''})
        })
    }, [])
    return (
        <>
            <Tabs defaultValue='info'>
                <Tabs.List mb='xl'>
                    <Tabs.Tab value='info' onClick={() => setProfileForm(true)} icon={<IconInfoCircle size='0.8rem' />}>
                        Thông tin liên lạc
                    </Tabs.Tab>
                    <Tabs.Tab value='password' onClick={() => setProfileForm(false)} icon={<IconLock size='0.8rem' />}>
                        Đổi mật khẩu
                    </Tabs.Tab>
                </Tabs.List>
                {profileForm == true ? <Profile form={form} /> : <Password />}
            </Tabs>
        </>
    )
}

export default Account
