import {ActionIcon, Group, Modal, Menu} from '@mantine/core'
import {IconDots, IconHistory, IconLock, IconPencil} from '@tabler/icons-react'
import UserForm from '../UserForm'
import {useDisclosure} from '@mantine/hooks'

function Options(props) {
    const [opened, {open, close}] = useDisclosure(false)

    return (
        <>
            <Group spacing='md' position='center'>
                <ActionIcon onClick={open}>
                    <IconPencil />
                </ActionIcon>
                {/* <Menu transitionProps={{transition: 'pop'}} withArrow position='bottom-end' withinPortal>
                    <Menu.Target>
                        <ActionIcon>
                            <IconDots />
                        </ActionIcon>
                    </Menu.Target>
                    <Menu.Dropdown>
                        <Menu.Item icon={<IconLock />} color='red'>
                            Khóa tài khoản
                        </Menu.Item>
                    </Menu.Dropdown>
                </Menu> */}
            </Group>
            <Modal
                opened={opened}
                onClose={close}
                title='Chỉnh sửa thông tin nhân viên'
                centered
                yOffset='1vh'
                xOffset={0}>
                <UserForm {...props} update={true} {...props.item} selectedData={props.selectedData}/>
            </Modal>
        </>
    )
}

export default Options
