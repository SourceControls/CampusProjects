import {ActionIcon, Group, Modal, Menu} from '@mantine/core'
import {IconCircleX, IconDots, IconHistory, IconPencil, IconSettings, IconTrash} from '@tabler/icons-react'
import AddFood from '../AddFood'
import {useDisclosure} from '@mantine/hooks'
import UpdateFood from '../UpdateFood'

function Options(props) {
    const [opened, {open, close}] = useDisclosure(false)

    return (
        <>
            <ActionIcon onClick={open}>
                <IconPencil />
            </ActionIcon>
            <Modal
                opened={opened}
                onClose={close}
                title='Chỉnh sửa nguyên liệu'
                centered
                yOffset='1vh'
                xOffset={0}
                size='70vw'>
                <UpdateFood {...props} />
            </Modal>
        </>
    )
}

export default Options
