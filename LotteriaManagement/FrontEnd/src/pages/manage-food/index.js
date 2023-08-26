import TableLayout from '../layout/TableLayout'
import FoodTable from './FoodTable'
import AddFood from './AddFood'
import {useState, useEffect} from 'react'
import {getListCategory, getListFood} from '../../utils/service'

function ManageFood() {
    const [listFood, setListFood] = useState([])
    const [totalPage, setTotalPage] = useState()
    const [listCategory, setListCategory] = useState()
    const [currentPage, setCurrentPage] = useState(1)
    const [currentCategory, setCurrentCategory] = useState('')
    const [searchKey, setSearchKey] = useState('')
    useEffect(() => {
        getListFood({key: searchKey, categoryId: currentCategory, page: currentPage}).then((rs) => {
            console.log(rs.data)
            setListFood(rs.data)
            setTotalPage(rs.total_page)
            if (currentPage != rs.current_page) {
                setCurrentPage(rs.current_page)
            }
        })
    }, [searchKey, currentCategory, currentPage])

    useEffect(() => {
        if (!listCategory)
            getListCategory().then((rs) => {
                setListCategory([
                    {value: '', label: 'Tất Cả'},
                    ...rs.data.map((item) => ({value: item.categoryId, label: item.name})),
                ])
            })
    }, [])

    const handleUpdateFood = (newFood, index) => {
        listFood[index] = newFood
        console.log(newFood)
        console.log('index: ' + index)
        setListFood([...listFood])
    }

    return (
        <>
            <TableLayout
                title='Danh sách món ăn'
                popupContent={<AddFood />}
                popupTitle='Thêm mới món ăn'
                popupSize={'70vw'}
                selectData={listCategory}
                setSelect={setCurrentCategory}
                setSearchKey={setSearchKey}
                currentPage={currentPage}
                setCurrentPage={setCurrentPage}
                totalPage={totalPage}>
                {listFood && listFood.length != 0 && (
                    <FoodTable data={listFood} handleUpdateFood={handleUpdateFood}></FoodTable>
                )}
            </TableLayout>
        </>
    )
}

export default ManageFood
