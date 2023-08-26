import {useEffect, useState} from 'react'
import {getListOrder} from '../../utils/service'
import TableLayout from '../layout/TableLayout'
import OrderTable from './OrderTable'

function ManageOrder() {
    const [listOrder, setListOrder] = useState([])
    const [totalPage, setTotalPage] = useState()
    const [dateLimit, setDateLimit] = useState({fromDate: '', toDate: ''})
    const [searchKey, setSearchKey] = useState()
    const [currentPage, setCurrentPage] = useState(1)
    useEffect(() => {
        console.log({key: searchKey, ...dateLimit, page: currentPage})
        getListOrder({key: searchKey, ...dateLimit, page: currentPage}).then((rs) => {
            setListOrder(rs.data)
            setTotalPage(rs.totalPage)
            if (currentPage != rs.currentPage) {
                setCurrentPage(rs.currentPage)
            }
        })
    }, [searchKey, currentPage, dateLimit])
    console.log(listOrder)
    return (
        <>
            {listOrder && listOrder[0] != '' && (
                <TableLayout
                    title='Danh sách Order'
                    setDateLimit={setDateLimit}
                    setSearchKey={setSearchKey}
                    currentPage={currentPage}
                    setCurrentPage={setCurrentPage}
                    totalPage={totalPage}>
                    <OrderTable data={listOrder}></OrderTable>
                </TableLayout>
            )}
        </>
    )
}

export default ManageOrder
