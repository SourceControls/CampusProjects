import {Checkbox, Table, ScrollArea, Badge, Title} from '@mantine/core'

import formatDate from '../../../utils/formatDate'
function PriceDateTable({form, priceList}) {
    return (
        <>
            <Title order={3} mx='auto'>
                Danh sách các đợt giá
            </Title>
            <ScrollArea h='400px'>
                <Table sx={{width: '100%'}} verticalSpacing='xs' striped highlightOnHover>
                    <thead>
                        <tr>
                            <th />
                            <th>Ngày bắt đầu</th>
                            <th>Ngày kết thúc</th>
                            <th>Loại giá</th>
                        </tr>
                    </thead>
                    <tbody>
                        {priceList.lenght != 0 &&
                            priceList.map((item, index) => (
                                <tr
                                    key={index}
                                    onClick={() => form.setFieldValue('priceListId', item.priceId)}
                                    style={{cursor: 'pointer'}}>
                                    <td>
                                        <Checkbox checked={form.values.priceListId == item.priceId} />
                                    </td>
                                    <td>{formatDate(item.startDate)[1]}</td>
                                    <td>{formatDate(item.endDate)[1]}</td>
                                    <td>
                                        <Badge color={'green'}>{item.type}</Badge>
                                    </td>
                                </tr>
                            ))}
                    </tbody>
                </Table>
            </ScrollArea>
        </>
    )
}

export default PriceDateTable
