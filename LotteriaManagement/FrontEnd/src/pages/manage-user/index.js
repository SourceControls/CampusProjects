import TableLayout from "../layout/TableLayout";
import UserTable from "./UserTable";
import UserForm from "./UserForm";
import { useState, useEffect } from "react";
import { getListUser, getListRole } from "../../utils/service";

function ManageUser() {
  const [listUser, setListUser] = useState([]);
  const [listRole, setListRole] = useState();

  const [totalPage, setTotalPage] = useState();
  const [currentPage, setCurrentPage] = useState(1);
  const [userId, setUserId] = useState("");
  const [searchKey, setSearchKey] = useState("");
  const [status, setStatus] = useState(1);
  useEffect(() => {
    getListUser({
      key: searchKey,
      userId: userId,
      page: currentPage,
    }).then((rs) => {
      console.log(rs);
      setListUser(rs.data);
      setTotalPage(rs.total_page);
      if (currentPage != rs.current_page) {
        setCurrentPage(rs.current_page);
      }
    });
  }, [searchKey, userId, currentPage, status]);

  useEffect(() => {
    getListRole().then((rs) => {
      setListRole([
        ...rs.data.map((item) => ({value: item.roleId, label: item.name})),
    ]);
    });
  }, []);

  const handleUpdate = (data, index) => {
    if (index == -1) {
      listUser[listUser.length] = data;
      setListUser([...listUser]);
      setStatus(status + 1);
    } else {
      listUser[index] = data;
      // console.log(data)
      // console.log('index: ' + index)
      setListUser([...listUser]);
    }
  };
  return (
    <>
      <TableLayout
        title="Danh sách nhân viên"
        popupContent={<UserForm selectedData={listRole} handleUpdate={handleUpdate}/>}
        popupTitle="Thêm mới nhân viên"
        setSearchKey={setSearchKey}
        currentPage={currentPage}
        setCurrentPage={setCurrentPage}
        totalPage={totalPage}
      >
        {listUser&&listUser.length != 0 && (
          <UserTable data={listUser} handleUpdate={handleUpdate} selectedData={listRole}></UserTable>
        )}
      </TableLayout>
    </>
  );
}

export default ManageUser;
