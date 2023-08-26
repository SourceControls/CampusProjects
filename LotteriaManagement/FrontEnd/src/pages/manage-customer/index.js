import TableLayout from "../layout/TableLayout";
import CustomerTable from "./CustomerTable";
import CustomerForm from "./CustomerForm";
import { getListCustomer } from "../../utils/service";
import { useState, useEffect } from "react";

function ManageCustomer() {
  const [listCustomer, setListCustomer] = useState([]);

  const [totalPage, setTotalPage] = useState();
  const [currentPage, setCurrentPage] = useState(1);
  const [customerId, setCustomerId] = useState("");
  const [searchKey, setSearchKey] = useState("");
  const [status, setStatus] = useState(1);
  useEffect(() => {
    getListCustomer({
      key: searchKey,
      customerId: customerId,
      page: currentPage,
    }).then((rs) => {
      console.log(rs);
      setListCustomer(rs.data);
      setTotalPage(rs.total_page);
      if (currentPage != rs.current_page) {
        setCurrentPage(rs.current_page);
      }
    });
  }, [searchKey, customerId, currentPage, status]);

  const handleUpdate = (data, index) => {
    if (index == -1) {
      listCustomer[listCustomer.length] = data;
      setListCustomer([...listCustomer]);
      setStatus(status+1)
    } else {
      listCustomer[index] = data;
      // console.log(data)
      // console.log('index: ' + index)
      setListCustomer([...listCustomer]);
    }
  };
  return (
    <>
      <TableLayout
        title="Danh sách khách hàng"
        popupContent={<CustomerForm handleUpdate={handleUpdate} />}
        popupTitle="Thêm mới khách hàng"
        setSearchKey={setSearchKey}
        currentPage={currentPage}
        setCurrentPage={setCurrentPage}
        totalPage={totalPage}
      >
        {listCustomer&&listCustomer.length != 0 && (
          <CustomerTable
            data={listCustomer}
            handleUpdate={handleUpdate}
          ></CustomerTable>
        )}
      </TableLayout>
    </>
  );
}

export default ManageCustomer;
