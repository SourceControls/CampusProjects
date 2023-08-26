import {Route, Routes, BrowserRouter as Router} from 'react-router-dom'
import {Provider} from 'react-redux'
import store from './utils/store'
import {GlobalLoading} from './utils/axios'
import {ToastContainer} from 'react-toastify'
import 'react-toastify/dist/ReactToastify.css'
import Home from './pages/home/index'
import Layout from './layout'
import ManageUser from './pages/manage-user/index'
import ManageCustomer from './pages/manage-customer/index'
import ManageFood from './pages/manage-food/index'
import ManageOrder from './pages/manage-order/index'
import {MantineProvider} from '@mantine/core'
import globalStyle from './components/globalStyle'
import ManageIngredient from './pages/manage-ingredient'
import SignIn from './pages/sign-in'
import Account from './pages/account/index'
import ManagePromotion from './pages/manage-promotion'
import Report from './pages/Report'

function App() {
    return (
        <Provider store={store}>
            <MantineProvider theme={{...globalStyle}} withNormalizeCSS>
                <Router>
                    <Routes>
                        <Route path='/' element={<Layout children={<Home />} />} />
                        <Route path='/sign-in' element={<SignIn />} />
                        <Route path='/home' element={<Layout children={<Home />} />} />
                        <Route path='/manage-ingredient' element={<Layout children={<ManageIngredient />} />} />
                        <Route path='/manage-user' element={<Layout children={<ManageUser />} />} />
                        <Route path='/manage-customer' element={<Layout children={<ManageCustomer />} />} />
                        <Route path='/manage-food' element={<Layout children={<ManageFood />} />} />
                        <Route path='/manage-order' element={<Layout children={<ManageOrder />} />} />
                        <Route path='/manage-promotion' element={<Layout children={<ManagePromotion />} />} />
                        <Route path='/report' element={<Layout children={<Report />} />} />
                        <Route path='/user' element={<Layout children={<Account />} />} />
                    </Routes>
                </Router>
            </MantineProvider>
            <ToastContainer position='top-left' autoClose={1000} />
            <GlobalLoading />
        </Provider>
    )
}

export default App
