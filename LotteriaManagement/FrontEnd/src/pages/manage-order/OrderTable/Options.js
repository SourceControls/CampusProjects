import {ActionIcon, Group, Modal, Menu} from '@mantine/core'
import {
    IconArrowBarToRight,
    IconCheckbox,
    IconCircleNumber1,
    IconCircleX,
    IconDots,
    IconHistory,
    IconPencil,
    IconSettings,
    IconTrash,
} from '@tabler/icons-react'
import {updateOrderStatus} from '../../../utils/service'

function Options(props) {
    return (
        <>
            <Group spacing='md' position='center'>
                <Menu transitionProps={{transition: 'pop'}} withArrow position='bottom-end' withinPortal>
                    <Menu.Target>
                        <ActionIcon>
                            <IconDots />
                        </ActionIcon>
                    </Menu.Target>

                    <Menu.Dropdown>
                        <Menu.Item
                            icon={<IconArrowBarToRight />}
                            color='orange'
                            onClick={() => {
                                updateOrderStatus({orderId: props.orderId, status: 'Processing'})
                                props.setOrder({...props, status: 'Processing'})
                            }}>
                            Tiến hành làm
                        </Menu.Item>
                        <Menu.Item
                            icon={<IconCheckbox />}
                            color='green'
                            onClick={() => {
                                updateOrderStatus({orderId: props.orderId, status: 'Completed'})
                                props.setOrder({...props, status: 'Completed'})
                            }}>
                            Hoàn thành
                        </Menu.Item>
                        <Menu.Item
                            icon={<IconCircleX />}
                            color='red'
                            onClick={() => {
                                updateOrderStatus({orderId: props.orderId, status: 'Cancelled'})
                                props.setOrder({...props, status: 'Cancelled'})
                            }}>
                            Hủy Đơn
                        </Menu.Item>
                    </Menu.Dropdown>
                </Menu>
            </Group>
        </>
    )
}

export default Options
