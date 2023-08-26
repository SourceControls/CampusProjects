import axios from 'axios'
import {useState} from 'react'
import {LoadingOverlay} from '@mantine/core'
import {toast} from 'react-toastify'

var displayGlobalLoading, setDisplayGlobalLoading
function GlobalLoading() {
    ;[displayGlobalLoading, setDisplayGlobalLoading] = useState(false)
    return <LoadingOverlay visible={displayGlobalLoading} overlayBlur={2} />
}

const instance = axios.create({
    baseURL: 'http://localhost:3000/',
    timeout: 35000,
    headers: {
        'Content-Type': 'application/json',
    },
})

instance.interceptors.request.use(
    function (config) {
        if (!displayGlobalLoading) setDisplayGlobalLoading(true)
        // console.log('Call API: ' + config.url)
        // toast.success(config.url)
        config.headers.Authorization = localStorage.Authorization
        return config
    },
    function (error) {
        setDisplayGlobalLoading(false)
        return toast.error(error.message)
    },
)
instance.interceptors.response.use(
    async function (response) {
        if (displayGlobalLoading) setTimeout(() => setDisplayGlobalLoading(false), 500)
        if (response.headers.get('Authorization')) {
            response.data['Authorization'] = response.headers.get('Authorization')
        }
        if (response.data.state) {
            if (response.config.method != 'get') toast.success(response.data.message)
        } else {
            toast.error(response.data.message)
        }
        return response.data
    },
    function (error) {
        setDisplayGlobalLoading(false)
        return toast.error(error.message)
    },
)

export {instance as axios, GlobalLoading, setDisplayGlobalLoading}
