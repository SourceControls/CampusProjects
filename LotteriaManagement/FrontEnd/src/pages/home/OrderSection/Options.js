import { Select } from "@mantine/core";
import { useState, useEffect } from "react";

function Options(props) {
  return (
    <>
      {props.promotions && (
        <Select
          data={props.promotions}
          placeholder="Chọn chương trình khuyến mãi"
          transitionProps={{
            transition: "pop-top-left",
            duration: 80,
            timingFunction: "ease",
          }}
          onChange={props.setPromotion}
        ></Select>
      )}
      {props.methods && (
        <Select
          data={props.methods}
          // defaultValue={props.methods[0].value}
          placeholder="Chọn phương thức thanh toán"
          transitionProps={{
            transition: "pop-top-left",
            duration: 80,
            timingFunction: "ease",
          }}
          onChange={props.setMethod}
        ></Select>
      )}
    </>
  );
}

export default Options;
