import {Button, Group} from '@mantine/core'
import MainSection from './MainSection'
import OrderSection from './OrderSection'
import {getListFood, getListCategory} from '../../utils/service'
import {CartProvider} from 'react-use-cart'
import {useState, useEffect} from 'react'

function Home() {
    const [listFood, setListFood] = useState([])
    const [listCategory, setListCategory] = useState([])
    const [totalPage, setTotalPage] = useState()
    const [currentPage, setCurrentPage] = useState(1)
    const [currentCategory, setCurrentCategory] = useState()
    const [searchKey, setSearchKey] = useState('')
    useEffect(() => {
        getListFood({
            key: searchKey,
            categoryId: currentCategory,
            page: currentPage,
        }).then((rs) => {
            setListFood(
                rs.data.map((item) => ({
                    id: item.foodId,
                    name: item.name,
                    price: item.currentPrice.price,
                    image: item.image,
                    available: item.available,
                })),
            )
            setTotalPage(rs.total_page)
            if (currentPage != rs.current_page) {
                setCurrentPage(rs.current_page)
            }
        })
    }, [searchKey, currentCategory, currentPage])
    return (
        <CartProvider>
            <Group w='100%' position='apart' align='flex-start'>
                <MainSection
                    w='70%'
                    foodData={listFood}
                    // categoryData={listCategory}
                    // params={getParams}
                    setCurrentCategory={setCurrentCategory}
                    setSearchKey={setSearchKey}
                    setCurrentPage={setCurrentPage}
                    currentPage={currentPage}
                    totalPage={totalPage}
                />
                <OrderSection w='28%' />
            </Group>
        </CartProvider>
    )
}

export default Home
