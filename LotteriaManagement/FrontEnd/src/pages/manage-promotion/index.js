import TableLayout from "../layout/TableLayout";
import PromotionTable from "./PromotionTable";
import { getListPromotion, addPromotion } from "../../utils/service";
import { useState, useEffect } from "react";
import PromotionForm from "./PromotionForm";

function ManagePromotion() {
  const [listPromotion, setListPromotion] = useState([]);
  // const [totalPage, setTotalPage] = useState();
  // const [currentPage, setCurrentPage] = useState(1);
  // const [searchKey, setSearchKey] = useState("");
  useEffect(() => {
    getListPromotion().then((rs) => {
      setListPromotion(
        //   rs.data.map((item) => ({id: item.foodId, name: item.name, price: item.currentPrice.price, image: item.image})),
        rs.data
      );
      // setTotalPage(rs.total_page);
      // if (currentPage != rs.current_page) {
      //   setCurrentPage(rs.current_page);
      // }
    });
    // }, [searchKey, currentCategory, currentPage]);
  }, []);
  return (
    <>
      <TableLayout
        title="Danh sách khuyến mại"
        popupContent={<PromotionForm />}
        popupTitle="Tạo mới khuyến mại"
      >
        <PromotionTable promotions={listPromotion}></PromotionTable>
      </TableLayout>
    </>
  );
}

export default ManagePromotion;
