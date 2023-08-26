import {Table, ScrollArea, useMantineTheme} from '@mantine/core'
import Row from './Row'

function CustomerTable(props) {
    const theme = useMantineTheme()

    return (
        <ScrollArea h='70vh'>
            <Table sx={{minWidth: 1080}} verticalSpacing='xs' striped highlightOnHover>
                <thead>
                    <tr>
                        <th>Mã khách hàng</th>
                        <th>Họ tên</th>
                        <th>Số điện thoại</th>
                        <th>Email</th>
                        <th>Địa chỉ</th>
                        <th>Điểm tích lũy</th>
                        <th>Ngày tạo</th>
                        <th>Người tạo</th>
                        <th>Ngày cập nhật</th>
                        <th>Người cập nhật</th>
                        <th />
                    </tr>
                </thead>
                <tbody>
                    {props.data &&
                        props.data.map((item, index) => (
                            <Row item={item} index={index} handleUpdate={props.handleUpdate} key={index}></Row>
                        ))}
                </tbody>
            </Table>
        </ScrollArea>
    )
}

export default CustomerTable
