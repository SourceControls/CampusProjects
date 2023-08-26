import {Table, ScrollArea} from '@mantine/core'
import Row from './Row'

function PromotionTable(props) {
    return (
        <ScrollArea h='70vh'>
            <Table sx={{minWidth: 1080}} verticalSpacing='xs' striped highlightOnHover>
                <thead>
                    <tr>
                        <th>Mã KM</th>
                        <th>Tên</th>
                        <th>Tỉ lệ KM</th>
                        <th>Điểm sử dụng</th>
                        <th>Trạng thái</th>
                        <th>Ngày tạo</th>
                        <th>Người tạo</th>
                        <th />
                    </tr>
                </thead>
                <tbody>
                    {props.promotions&&props.promotions.map((item, index) => (
                        <Row item={item} index={index} handleUpdate={props.handleUpdate} key={index}></Row>
                    ))}
                </tbody>
            </Table>
        </ScrollArea>
    )
}

export default PromotionTable
