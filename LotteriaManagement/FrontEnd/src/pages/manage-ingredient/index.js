import TableLayout from "./../layout/TableLayout";
import IngredientTable from "./IngredientTable";
import IngredientForm from "./IngredientForm";
import { useState, useEffect } from "react";
import { getListIngredient, getListWarehouse } from "../../utils/service";
import { toast } from "react-toastify";

function ManageIngredient() {
  const [listIngredient, setListIngredient] = useState();
  const [totalPage, setTotalPage] = useState();
  const [listBranch, setListBranch] = useState();
  const [currentPage, setCurrentPage] = useState(1);
  const [currentBranch, setCurrentBranch] = useState("");
  const [searchKey, setSearchKey] = useState("");
  const [status, setStatus] = useState(1);

  useEffect(() => {
    getListIngredient({
      key: searchKey,
      wareHouseId: currentBranch,
      page: currentPage,
    }).then((rs) => {
      setListIngredient(rs.data);
      setTotalPage(rs.total_page);
      if (currentPage != rs.current_page) {
        setCurrentPage(rs.current_page);
      }
    }).catch(err=>{
      toast.error(err)
    });
  }, [searchKey, currentBranch, currentPage, status]);

  useEffect(() => {
    getListWarehouse({ status: "" }).then((rs) => {
      setListBranch([
        { value: "", label: "Tất Cả" },
        ...rs.data.map((item) => ({
          value: String(item.wareHouseId),
          label: item.warehouseName,
        })),
      ]);
    });
  }, []);


  const handleUpdate = (data, index) => {
    if (index == -1) {
      listIngredient[listIngredient.length] = data;
      setListIngredient([...listIngredient]);
      setStatus(status+1)
    } else {
      listIngredient[index] = data;
      // console.log(data)
      // console.log('index: ' + index)
      setListIngredient([...listIngredient]);
    }
  };

  return (
    <>
      <TableLayout
        title="Danh sách nguyên liệu"
        selectData={listBranch}
        popupContent={<IngredientForm handleUpdate={handleUpdate} />}
        popupTitle="Thêm mới nguyên liệu"
        setSelect={setCurrentBranch}
        setSearchKey={setSearchKey}
        currentPage={currentPage}
        setCurrentPage={setCurrentPage}
        totalPage={totalPage}
      >
        {listIngredient&&listIngredient.length != 0 && (
        <IngredientTable
          data={listIngredient}
          handleUpdate={handleUpdate}
        ></IngredientTable>
        )}
      </TableLayout>
    </>
  );
}

export default ManageIngredient;
