import {Stack} from '@mantine/core'
import PriceDateForm from './PriceDateForm'
import PriceDateTable from './PriceDateTable'
import {useEffect, useState} from 'react'
import {getListPriceList} from '../../../utils/service'
import {addPriceList} from '../../../utils/service'
import {useDisclosure} from '@mantine/hooks'
import AddProductPrice from './AddProductPrice'

function PriceDateSection({form, update}) {
    const [priceList, setPriceList] = useState()

    useEffect(() => {
        getListPriceList().then((rs) => {
            console.log(rs.data)
            setPriceList(rs.data)
        })
    }, [])
    const handleAddPriceList = async (newPriceList) => {
        addPriceList(newPriceList).then((rs) => {
            setPriceList([...rs.data, ...priceList]).then((rs) => {})
        })
    }
    return (
        <>
            {priceList && (
                <Stack w='55%'>
                    <>{update && <AddProductPrice form={form} />}</>
                    <PriceDateForm handleAddPriceList={handleAddPriceList} />
                    <PriceDateTable form={form} priceList={priceList} />
                </Stack>
            )}
        </>
    )
}

export default PriceDateSection
