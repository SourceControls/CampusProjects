import {Button, Group, Paper, TextInput, Title} from '@mantine/core'
import {DateInput} from '@mantine/dates'
import {useForm} from '@mantine/form'

function PriceDateForm(props) {
    const form = useForm({
        initialValues: {startDate: new Date(), endDate: new Date(), type: 'SALE'},
        validate: {},
    })

    return (
        <Paper withBorder p='md'>
            <Title order={3} mb='xl'>
                Thêm đợt giá
            </Title>
            <form onSubmit={form.onSubmit(props.handleAddPriceList)}>
                <Group align='flex-end'>
                    <DateInput
                        allowDeselect
                        valueFormat='DD/MM/YYYY'
                        label='Ngày bắt đầu'
                        placeholder='Chọn ngày'
                        maw={140}
                        {...form.getInputProps('startDate')}
                        withAsterisk
                    />
                    <DateInput
                        allowDeselect
                        valueFormat='DD/MM/YYYY'
                        label='Ngày kết thúc'
                        placeholder='Chọn ngày'
                        maw={140}
                        {...form.getInputProps('endDate')}
                        withAsterisk
                    />
                    <TextInput
                        label='Loại giá'
                        maw={100}
                        placeholder='Nhập loại giá'
                        {...form.getInputProps('type')}
                        withAsterisk
                    />
                    <Button type='submit'>Thêm đợt giá</Button>
                </Group>
            </form>
        </Paper>
    )
}

function getCurrentDate() {
    var currentDate = new Date()

    var day = currentDate.getDate()
    var month = currentDate.getMonth() + 1 // Months are zero-based, so we add 1
    var year = currentDate.getFullYear()

    // Adjust day and month to have leading zeros if necessary
    var formattedDay = (day < 10 ? '0' : '') + day
    var formattedMonth = (month < 10 ? '0' : '') + month

    var formattedDate = formattedDay + '/' + formattedMonth + '/' + year

    return formattedDate
}
export default PriceDateForm
