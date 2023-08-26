import {ActionIcon, Group, Modal, Menu} from '@mantine/core'
import {IconCircle, IconDots, IconHistory, IconLock, IconPencil} from '@tabler/icons-react'
import PromotionForm from '../PromotionForm'
import {useDisclosure} from '@mantine/hooks'

function Options(props) {
    const [opened, {open, close}] = useDisclosure(false)

    return (
        <>
            {/* <Group spacing='md' position='center'>
                <ActionIcon onClick={open}>
                    <IconPencil />
                </ActionIcon>
                <Menu transitionProps={{transition: 'pop'}} withArrow position='bottom-end' withinPortal>
                    <Menu.Target>
                        <ActionIcon>
                            <IconDots />
                        </ActionIcon>
                    </Menu.Target>
                    <Menu.Dropdown>
                        <Menu.Item icon={<IconCircle />} color='red'>
                            Ngừng sử dụng
                        </Menu.Item>
                    </Menu.Dropdown>
                </Menu>
            </Group> */}
            <Modal
                opened={opened}
                onClose={close}
                title='Chỉnh sửa thông tin khuyến mãi'
                centered
                yOffset='1vh'
                xOffset={0}>
                <PromotionForm {...props} update={true} {...props.item}/>
            </Modal>
        </>
    )
}

export default Options
