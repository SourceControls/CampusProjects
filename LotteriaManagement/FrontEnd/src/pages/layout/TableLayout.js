import {Title, Stack, Group, Text, TextInput, Pagination, Paper, Select, Modal, Button} from '@mantine/core'
import {IconSearch, IconPlus} from '@tabler/icons-react'
import {useState} from 'react'
import {primaryColor} from '../../components/globalStyle'
import formatDate from '../../utils/formatDate'
import {useDisclosure} from '@mantine/hooks'
import {DateInput} from '@mantine/dates'
function TableLayout(props) {
    const [opened, {open, close}] = useDisclosure(false)
    return (
        <>
            <Paper shadow='lg' radius='md' bg='white' mx='auto'>
                <Stack spacing='lg' p='lg'>
                    <Group position='apart' align='flex-end'>
                        <Title order={3} color={primaryColor}>
                            {props.title}
                        </Title>
                        {props.popupContent && (
                            <Button leftIcon={<IconPlus />} ml='auto' onClick={open}>
                                Thêm mới
                            </Button>
                        )}

                        <TextInput
                            placeholder='Tìm kiếm...'
                            icon={<IconSearch />}
                            w='400px'
                            ml={props.popupContent ? 0 : 'auto'}
                            onKeyDown={(e) => {
                                if (e.key === 'Enter') {
                                    props.setSearchKey(e.target.value)
                                }
                            }}
                        />
                        {props.selectData && (
                            <Select
                                data={props.selectData}
                                defaultValue={props.selectData[0].value}
                                transitionProps={{transition: 'pop-top-left', duration: 80, timingFunction: 'ease'}}
                                onChange={props.setSelect}></Select>
                        )}
                        {props.setDateLimit && (
                            <form
                                onSubmit={(e) => {
                                    e.preventDefault()
                                    props.setDateLimit({
                                        fromDate: convertFormatDate(formatDate(e.target.fromDate.value)[1]),
                                        toDate: convertFormatDate(formatDate(e.target.toDate.value)[1]) + ' 23:59:59',
                                    })
                                }}>
                                <Group align='flex-end'>
                                    <DateInput
                                        allowDeselect
                                        name='fromDate'
                                        valueFormat='YYYY-MM-DD'
                                        label='Ngày bắt đầu'
                                        placeholder='Chọn ngày'
                                        maw={200}
                                    />
                                    <DateInput
                                        allowDeselect
                                        name='toDate'
                                        valueFormat='YYYY-MM-DD'
                                        label='Ngày kết thúc'
                                        placeholder='Chọn ngày'
                                        maw={200}
                                    />
                                    <Button type='submit'>Lọc</Button>
                                </Group>
                            </form>
                        )}
                    </Group>
                    {props.children}
                    {props.totalPage && props.currentPage && (
                        <Pagination
                            total={props.totalPage}
                            ml='auto'
                            value={props.currentPage}
                            onChange={props.setCurrentPage}
                        />
                    )}
                </Stack>
            </Paper>
            <Modal
                opened={opened}
                onClose={close}
                title={props.popupTitle}
                centered
                yOffset='1vh'
                xOffset={0}
                size={props.popupSize}>
                {props.popupContent}
            </Modal>
        </>
    )
}

function convertFormatDate(dateStr) {
    // Chuyển đổi thành đối tượng Date
    var dateParts = dateStr.split('/') // Tách chuỗi thành mảng [ngày, tháng, năm]
    var date = new Date(dateParts[2], dateParts[1] - 1, dateParts[0]) // Lưu ý: Trừ 1 ở tháng vì đối tượng Date đếm từ 0 đến 11

    // Lấy các phần của ngày để tạo chuỗi mới
    var year = date.getFullYear()
    var month = ('0' + (date.getMonth() + 1)).slice(-2) // Thêm '0' và cắt 2 chữ số cuối cùng để đảm bảo độ dài là 2
    var day = ('0' + date.getDate()).slice(-2)

    // Chuỗi đã được chuyển đổi
    var convertedDateString = year + '-' + month + '-' + day
    // YYYY-MM-DD
    return convertedDateString
}

export default TableLayout
