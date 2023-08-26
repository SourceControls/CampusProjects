import {Button, Checkbox, Group, NumberInput, Select, Stack, TextInput} from '@mantine/core'
import {useForm} from '@mantine/form'
import {ImageDropZone} from '../component/ImageDropZone'
import PriceDateSection from './PriceDateSection'
import uploadImage from '../../utils/uploadImage'
import {addFood, getListCategory} from '../../utils/service'
import {useEffect, useState} from 'react'

function AddFood(props) {
    const [category, setCategory] = useState([])
    const form = useForm({
        initialValues: {
            foodId: props.foodId,
            name: 'Gà Rán 01',
            unit: 'Chiếc',
            image: 'https://static.kfcvietnam.com.vn/images/items/lg/D1-new.jpg?v=4aj0lg',
            price: 60000,
            available: true,
            priceListId: 0,
            file: '',
            categoryId: 0,
        },
        validate: {
            name: (value) => (value.length < 2 ? 'Tên phải có ít nhất 2 kí tự' : null),
            unit: (value) => (!value.length ? 'Đơn vị không được để trống' : null),
        },
    })
    useEffect(() => {
        getListCategory().then((rs) => {
            form.setValues({categoryId: rs.data[0].categoryId})
            setCategory(rs.data.map((item) => ({value: item.categoryId, label: item.name})))
        })
    }, [])

    const handleSubmit = async (data) => {
        if (form.values.file) {
            const image = await uploadImage(form.values.file)
            form.values.image = image
        }
        addFood(data)
    }
    return (
        <Group align='flex-start' position='apart'>
            <form onSubmit={form.onSubmit(handleSubmit)} style={{width: '42%'}}>
                <Stack>
                    <ImageDropZone form={form}></ImageDropZone>
                    <TextInput
                        label='Tên món ăn'
                        placeHolder='Nhập tên món ăn...'
                        {...form.getInputProps('name')}
                        withAsterisk></TextInput>
                    {category.length != 0 && (
                        <Select
                            label='Danh mục'
                            data={category}
                            {...form.getInputProps('categoryId')}
                            transitionProps={{
                                transition: 'pop-top-left',
                                duration: 80,
                                timingFunction: 'ease',
                            }}></Select>
                    )}
                    <TextInput
                        label='Đơn vị'
                        placeHolder='Nhập đơn vị...'
                        {...form.getInputProps('unit')}
                        withAsterisk></TextInput>
                    <NumberInput
                        label='Giá'
                        placeHolder='Nhập giá...'
                        parser={(value) => value.replace(/\đ\s?|(,*)/g, '')}
                        formatter={(value) =>
                            !Number.isNaN(parseFloat(value)) ? `đ ${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',') : 'đ '
                        }
                        {...form.getInputProps('price')}
                        withAsterisk></NumberInput>
                    <Button type='submit'>Lưu</Button>
                </Stack>
            </form>
            <PriceDateSection form={form} />
        </Group>
    )
}

export default AddFood
