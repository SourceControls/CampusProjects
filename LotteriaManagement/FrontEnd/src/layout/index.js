import {Navbar, AppShell, Tooltip, Modal} from '@mantine/core'
import {useEffect, useState} from 'react'
import {
    IconLogout,
    IconUsersGroup,
    IconHome,
    IconUser,
    IconChefHat,
    IconFileInvoice,
    IconMeat,
    IconTicket,
    IconReport,
} from '@tabler/icons-react'
import {Link} from 'react-router-dom'
import useStyles from './style'
import MyHeader from './MyHeader'
import Account from '../pages/account'
import {useDisclosure} from '@mantine/hooks'
const navItem = [
    {link: '/home', label: 'Trang Chủ', icon: IconHome},
    {link: '/manage-ingredient', label: 'Quản Lý Nguyên Liệu', icon: IconChefHat},
    {link: '/manage-order', label: 'Quản Lý Order', icon: IconFileInvoice},
    {link: '/manage-food', label: 'Quản Lý Món Ăn', icon: IconMeat, role: 'QUẢN LÝ'},
    {link: '/manage-customer', label: 'Quản Lý Khách Hàng', icon: IconUsersGroup},
    {link: '/manage-promotion', label: 'Quản lý khuyến mại', icon: IconTicket, role: 'QUẢN LÝ'},
    {link: '/manage-user', label: 'Quản Lý Nhân Viên', icon: IconUsersGroup, role: 'QUẢN LÝ'},
    {link: '/report', label: 'Báo cáo', icon: IconReport, role: 'QUẢN LÝ'},
]

function checkRole(needRole) {
    let isManager = false
    JSON.parse(localStorage.role).map((i) => {
        if (i.name.toUpperCase() == needRole) isManager = true
    })

    return isManager
}

function Layout({children}) {
    const {classes, cx} = useStyles()
    const [active, setActive] = useState(navItem[0].label)
    const [opened, {open, close}] = useDisclosure(false)

    useEffect(() => {
        if (!localStorage.Authorization) window.location.replace('/sign-in')
    }, [])

    return (
        <AppShell
            padding='md'
            header={<MyHeader></MyHeader>}
            navbar={
                <Navbar width={{base: 80}} p='md' className={classes.navbar}>
                    <Navbar.Section grow>
                        {navItem.map((item) =>
                            item.role ? (
                                checkRole(item.role) == true && (
                                    <Tooltip key={item.label} label={item.label}>
                                        <Link
                                            className={cx(classes.link, {[classes.linkActive]: item.label === active})}
                                            to={item.link}
                                            key={item.label}
                                            onClick={(event) => {
                                                setActive(item.label)
                                            }}>
                                            <item.icon className={classes.linkIcon} stroke={2} size={28} />
                                        </Link>
                                    </Tooltip>
                                )
                            ) : (
                                <Tooltip key={item.label} label={item.label}>
                                    <Link
                                        className={cx(classes.link, {[classes.linkActive]: item.label === active})}
                                        to={item.link}
                                        key={item.label}
                                        onClick={(event) => {
                                            setActive(item.label)
                                        }}>
                                        <item.icon className={classes.linkIcon} stroke={2} size={28} />
                                    </Link>
                                </Tooltip>
                            ),
                        )}
                    </Navbar.Section>

                    <Navbar.Section>
                        <Tooltip label='Thông tin tài khỏan'>
                            <div className={classes.link} onClick={open}>
                                <IconUser className={classes.linkIcon} stroke={2} size={28} />
                            </div>
                        </Tooltip>
                        <Tooltip label='Đăng xuất'>
                            <Link to='/sign-in' className={classes.link}>
                                <IconLogout className={classes.linkIcon} stroke={2} size={28} />
                            </Link>
                        </Tooltip>
                    </Navbar.Section>
                </Navbar>
            }
            styles={(theme) => ({
                main: {backgroundColor: theme.colorScheme === 'dark' ? theme.colors.dark[8] : theme.colors.gray[0]},
            })}>
            {children}
            <Modal opened={opened} onClose={close} title={'Thông tin tài khoản'} yOffset='1vh' xOffset={0} size={400}>
                <Account />
            </Modal>
        </AppShell>
    )
}

export default Layout
