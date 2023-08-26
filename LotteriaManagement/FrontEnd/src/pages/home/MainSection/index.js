import { Grid, Stack } from "@mantine/core";
import Header from "./Header";
import GridFood from "./GridFood";
import { getListCategory } from "../../../utils/service";
import { useState, useEffect } from "react";

function MainSection(props) {
  const [listCategory, setListCategory] = useState();
  useEffect(() => {
    getListCategory().then((rs) => {
      setListCategory([
        {value: '', label: 'Tất Cả'},
        ...rs.data.map((item) => ({value: item.categoryId, label: item.name})),
    ]);
      
    });
  }, []);
  return (
    <Stack w={props.w}>
      <Header
        listCategory={listCategory}
        // params={props.params}
        setCurrentCategory={props.setCurrentCategory}
        setCurrentPage={props.setCurrentPage}
        setSearchKey={props.setSearchKey}
        currentPage={props.currentPage}
        totalPage={props.totalPage}
      ></Header>
      <GridFood foodList={props.foodData}></GridFood>
    </Stack>
  );
}

export default MainSection;
