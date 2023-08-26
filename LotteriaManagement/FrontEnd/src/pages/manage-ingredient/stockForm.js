import {Button, Stack, TextInput, NumberInput, Select} from '@mantine/core'
import {useState, useEffect} from 'react'
import {useForm} from '@mantine/form'
import uploadImg from '../../utils/uploadImage'
import {updateIngredientStock, getListWarehouse} from '../../utils/service'
import {ImageDropZone} from '../component/ImageDropZone'

function StockForm(props) {
    const [listWareHouse, setListWarehouse] = useState()
    useEffect(() => {
        if (!listWareHouse) {
            getListWarehouse({
                status: 'Active',
            }).then((rs) => {
                setListWarehouse([
                    ...rs.data.map((item) => ({
                        value: item.wareHouseId,
                        label: item.warehouseName,
                    })),
                ])
            })
        }
    }, [])

    const form = useForm({
        initialValues: props.import
            ? {
                  wareHouseId: 1,
                  quantity: 100,
                  price: 10000,
                  ingredientId: props.ingredientId,
                  userId: parseInt(localStorage.userId),
              }
            : {
                  wareHouseId: 1,
                  quantity: 100,
                  ingredientId: props.ingredientId,
                  userId: parseInt(localStorage.userId),
              },
        validate: {
            // quantity: (value) => (value.length ==0 ?"Không được bỏ trống số lượng!" : null),
            // price: (value) => (!value.length? "Không được bỏ trống giá!" : null),
        },
    })

    const handleSubmit = async (data) => {
        if (props.import) {
            // console.log(data)
            updateIngredientStock(data).then((rs) => {
                console.log(rs)
                if (rs.state) {
                    props.handleUpdate(rs.data[0], props.index)
                }
            })
        } else {
            var newData = {
                wareHouseId: data.wareHouseId,
                quantity: 0 - data.quantity,
                ingredientId: data.ingredientId,
                userId: data.userId,
            }
            updateIngredientStock(newData).then((rs) => {
                if (rs.state) {
                    props.handleUpdate(rs.data[0], -1)
                    form.setValues({
                        quantity: '',
                        price: '',
                    })
                }
                console.log(rs)
            })
        }
    }

    return (
        <form onSubmit={form.onSubmit((values) => handleSubmit(values))}>
            <Stack>
                <TextInput label='Mã nguyên liệu' disabled {...form.getInputProps('ingredientId')}></TextInput>
                <NumberInput
                    label='Số lượng'
                    placeHolder='Nhập số lượng...'
                    {...form.getInputProps('quantity')}></NumberInput>
                {props.import ? (
                    <NumberInput label='Giá' placeHolder='Nhập giá...' {...form.getInputProps('price')}></NumberInput>
                ) : (
                    <>
                        <></>
                    </>
                )}
                {listWareHouse && (
                    <Select
                        data={listWareHouse}
                        placeholder='Chọn kho'
                        transitionProps={{
                            transition: 'pop-top-left',
                            duration: 80,
                            timingFunction: 'ease',
                        }}
                        {...form.getInputProps('wareHouseId')}></Select>
                )}
                <Button type='submit'>Lưu</Button>
            </Stack>
        </form>
    )
}

export default StockForm
