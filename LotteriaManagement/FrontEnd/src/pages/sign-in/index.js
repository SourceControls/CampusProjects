import {BackgroundImage, Stack} from '@mantine/core'
import {useEffect} from 'react'
import MyHeader from '../../layout/MyHeader'
import SignInForm from './SignInForm'

function SignIn() {
    useEffect(() => {
        localStorage.clear()
    }, [])
    return (
        <BackgroundImage
            src='https://photo2.tinhte.vn/data/attachment-files/2021/04/5417091_CV.jpg'
            w='100%'
            h='100vh'
            style={{overflow: 'hidden'}}>
            <MyHeader></MyHeader>
            <SignInForm></SignInForm>
        </BackgroundImage>
    )
}

export default SignIn
