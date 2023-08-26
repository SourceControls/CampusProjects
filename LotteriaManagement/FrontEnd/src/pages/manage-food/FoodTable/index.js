import {Table, ScrollArea, useMantineTheme} from '@mantine/core'
import Row from './Row'

function FoodTable({data, handleUpdateFood}) {
    const theme = useMantineTheme()

    return (
        <ScrollArea h='70vh'>
            <Table sx={{minWidth: 1080}} verticalSpacing='xs' striped highlightOnHover>
                <thead>
                    <tr>
                        <th>Mã món ăn</th>
                        <th>Món ăn</th>
                        <th>Trạng thái</th>
                        <th>Đơn vị</th>
                        <th>Giá</th>
                        <th>Số lượng bán</th>
                        <th>Ngày tạo</th>
                        <th>Người tạo</th>
                        <th>Ngày cập nhật</th>
                        <th>Người cập nhật</th>
                        <th />
                    </tr>
                </thead>
                <tbody>
                    {data &&
                        data.map((item, index) => (
                            <Row item={item} index={index} handleUpdateFood={handleUpdateFood} key={index}></Row>
                        ))}
                </tbody>
            </Table>
        </ScrollArea>
    )
}

export default FoodTable
