import {Table, ScrollArea, useMantineTheme} from '@mantine/core'
import Row from './Row'

function OrderTable(props) {
    const theme = useMantineTheme()

    return (
        <ScrollArea h='70vh'>
            <Table sx={{minWidth: 1080}} verticalSpacing='xs' striped highlightOnHover>
                <thead>
                    <tr>
                        <th />
                        <th>Mã Order</th>
                        <th>Khách hàng</th>
                        <th>Trạng thái</th>
                        <th>Tổng tiền</th>
                        <th>Thời gian tạo</th>
                        <th>Người tạo</th>
                        <th>Thời gian hủy</th>
                        <th>Người hủy</th>
                        <th />
                    </tr>
                </thead>
                <tbody>
                    {props.data.map((item, index) => (
                        <Row item={item} index={index} key={index}></Row>
                    ))}
                </tbody>
            </Table>
        </ScrollArea>
    )
}

export default OrderTable
