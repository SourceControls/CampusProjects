import {Badge, Button, Group, Modal, NumberInput, Paper, ScrollArea, Table, Title} from '@mantine/core'
import {useDisclosure} from '@mantine/hooks'
import {useEffect, useState} from 'react'
import formatDate from '../../../utils/formatDate'
import {addProductPrice, getProductPrice} from '../../../utils/service'
import Price from '../../component/Price'
function AddProductPrice({form}) {
    const [opened, {open, close}] = useDisclosure(false)
    const [productPrice, setProductPrice] = useState([])
    useEffect(() => {
        getProductPrice(form.values.foodId).then((rs) => setProductPrice(rs.data))
    }, [])

    const handleSubmit = (e) => {
        e.preventDefault()
        addProductPrice({
            productId: form.values.foodId,
            priceListId: form.values.priceListId,
            price: form.values.price,
        }).then(() => getProductPrice(form.values.foodId).then((rs) => setProductPrice(rs.data)))
    }
    return (
        <>
            <Paper withBorder p='md'>
                <form onSubmit={handleSubmit}>
                    <Group align='flex-end'>
                        <NumberInput
                            label='Giá'
                            maw='250px'
                            placeHolder='Nhập giá...'
                            parser={(value) => value.replace(/\đ\s?|(,*)/g, '')}
                            formatter={(value) =>
                                !Number.isNaN(parseFloat(value))
                                    ? `đ ${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')
                                    : 'đ '
                            }
                            {...form.getInputProps('price')}
                            withAsterisk></NumberInput>
                        <Button type='submit'>Lưu giá</Button>
                        <Button variant='outline' onClick={open}>
                            Xem lịch sử giá
                        </Button>
                    </Group>
                </form>
            </Paper>
            <Modal opened={opened} onClose={close} title='Lịch sử giá' centered yOffset='1vh' xOffset={0} size='40vw'>
                <ScrollArea h='500px'>
                    <Table sx={{width: '100%'}} verticalSpacing='xs' striped highlightOnHover>
                        <thead>
                            <tr>
                                <th>Ngày bắt đầu</th>
                                <th>Ngày kết thúc</th>
                                <th>Loại giá</th>
                                <th>Giá</th>
                                <th>Trạng thái áp dụng</th>
                            </tr>
                        </thead>
                        <tbody>
                            {productPrice &&
                                productPrice.map((item, index) => (
                                    <tr
                                        key={index}
                                        onClick={() => form.setFieldValue('priceId', item.priceId)}
                                        style={{cursor: 'pointer'}}>
                                        <td>{formatDate(item.startDate)[1]}</td>
                                        <td>{formatDate(item.enddate)[1]}</td>
                                        <td>
                                            <Badge color={'green'}>{item.type}</Badge>
                                        </td>
                                        <td>
                                            <Price data={item.price} align='left' />
                                        </td>
                                        <td width={'128px'} align='center'>
                                            {item.isActive == true && <Badge color={'red'}>{'Đang áp dụng'}</Badge>}
                                        </td>
                                    </tr>
                                ))}
                        </tbody>
                    </Table>
                </ScrollArea>
            </Modal>
        </>
    )
}

export default AddProductPrice
