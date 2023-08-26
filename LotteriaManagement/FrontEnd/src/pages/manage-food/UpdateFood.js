import {Button, Checkbox, filterProps, Group, NumberInput, Select, Stack, TextInput} from '@mantine/core'
import {useForm} from '@mantine/form'
import {ImageDropZone} from '../component/ImageDropZone'
import PriceDateSection from './PriceDateSection'
import uploadImage from '../../utils/uploadImage'
import {addFood, getListCategory, updateFood} from '../../utils/service'
import {useEffect, useState} from 'react'

function UpdateFood(props) {
    const [category, setCategory] = useState([])
    const form = useForm({
        initialValues: {
            foodId: props.foodId,
            name: props.name,
            unit: props.unit,
            image: props.image,
            available: props.available,
            categoryId: props.category.categoryId,
            price: parseInt(props.currentPrice.price),
            priceListId: props.currentPrice.priceListId,
            file: '',
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
    useEffect(() => {
        props.setFood({
            ...props,
            currentPrice: {
                ...props.currentPrice,
                price: parseInt(form.values.price),
            },
        })
    }, [form.values.price])
    const handleSubmit = async (data) => {
        if (form.values.file) {
            const image = await uploadImage(form.values.file)
            form.values.image = image
        }
        updateFood({...data, available: form.values.available == 1 ? true : false}).then((rs) => {
            if (rs.state) {
                props.setFood({
                    ...props,
                    name: form.values.name,
                    unit: form.values.unit,
                    image: form.values.image,
                    available: form.values.available,
                    categoryId: form.values.categoryId,
                })
            }
        })
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

                    <Checkbox label='Hiện hành' {...form.getInputProps('available')} checked={form.values.available} />
                    <Button type='submit'>Lưu</Button>
                </Stack>
            </form>
            <PriceDateSection form={form} setFood={props.setFood} food={{...props}} update={true} />
        </Group>
    )
}

export default UpdateFood
