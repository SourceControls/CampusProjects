import {Button, Stack, TextInput} from '@mantine/core'
import {useForm} from '@mantine/form'
import {useEffect} from 'react'
import {getUserInfo, updateUser} from '../../utils/service'
import uploadImg from '../../utils/uploadImage'
import {ImageDropZone} from '../component/ImageDropZone'

function Profile({form}) {
    const handleSubmit = async () => {
        if (form.values.file) {
            const image = await uploadImg(form.values.file)
            form.values.image = image
        }
        updateUser({...form.values, updatedUserId: form.values.userId})
    }
    return (
        <form onSubmit={form.onSubmit(handleSubmit)}>
            <Stack>
                <ImageDropZone form={form}></ImageDropZone>
                <TextInput value={form.values.email} disabled label='Email' placeHolder='Nhập email...'></TextInput>
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
                <Button type='submit'>Lưu</Button>
            </Stack>
        </form>
    )
}

export default Profile
