import Header from "./Header";
import Details from "./Details";
import Bill from "./Bill";
import { Button, ScrollArea, Select, Stack, Title } from "@mantine/core";
import Options from "./Options";
import { useState, useEffect } from "react";
import {
  getListPromotion,
  getListPaymentMethod,
  getListCustomer,
  createOrder,
} from "../../../utils/service";
import { useCart } from "react-use-cart";

function OrderSection(props) {
  const [promotions, setPromotions] = useState();
  const [tempPromotions, setTempPromotions] = useState([]);
  const [methods, setMethods] = useState();
  const [listCustomers, setCustomers] = useState();

  // const [promotionValue, setPromotionValue] = useState("");
  const [promotionValue, setPromotionValue] = useState("");
  const [discount, setDiscount] = useState();
  const [method, setMethod] = useState(null);
  const [customerId, setCustomerId] = useState();
  const [point, setPoint] = useState();

  const { items } = useCart();
  const { emptyCart } = useCart();
  const details = [];
  const data = items.map((item) => {
    details.push({
      foodId: parseInt(item.id),
      price: parseFloat(item.price),
      quantity: parseInt(item.quantity),
    });
  });

  useEffect(() => {
    getListPaymentMethod().then((rs) => {
      setMethods([
        ...rs.data.map((item) => ({
          value: String(item.paymentMethodId),
          label: item.name,
        })),
      ]);
    });
    getListPromotion().then((rs) => {
      setPromotions([
        ...rs.data.map((item) => ({
          value: String(item.promoteId),
          label: item.name,
        })),
      ]);
      setTempPromotions(rs.data)
    });

    getListCustomer({ customerId: "", key: "", page: -1 }).then((rs) => {
      setCustomers([
        ...rs.data.map((item) => ({
          value: String(item.customerId),
          label: `${item.name} - ${item.phone}` ,
        })),
      ]);
    });
  }, []);

  useEffect(() => {
    if (customerId)
      getListCustomer({
        customerId: parseInt(customerId),
        key: "",
        page: 1,
      }).then((rs) => {
        setPoint(rs.data[0].point);
      });
  }, [customerId]);

  useEffect(() => {
    if(promotionValue){
      const found = tempPromotions.find((obj) => {
        return obj.promoteId == promotionValue;
      });
      setDiscount(found.discount);
    }
  }, [promotionValue]);

  const handleOrder = async () => {
    if(promotionValue=='')
    setPromotionValue(null)
    else
    setPromotionValue(parseInt(promotionValue))
    const data = {
      customerId: parseInt(customerId),
      userId: parseInt(localStorage.userId),
      details: details,
      promoteId: promotionValue,
      paymentMethodId: parseInt(method),
    };
    // console.log(data)
    createOrder(data).then((res) => {
      if(res.state)
      emptyCart();
    });
    // console.log(promotionValue)
  };

  return (
    <Stack w={props.w} p="md" justify="flex-start" bg="white">
      <Header
        customers={listCustomers}
        setCustomerId={setCustomerId}
        point={point}
      ></Header>
      <Stack>
        <Title order={3}>Chi tiết đơn đặt</Title>
        <ScrollArea h={310}>
          <Details></Details>
        </ScrollArea>
      </Stack>
      <Options
        methods={methods}
        promotions={promotions}
        setMethod={setMethod}
        setPromotion={setPromotionValue}
      ></Options>
      <Bill promotion={discount}></Bill>
      <Button onClick={handleOrder}>Thanh toán</Button>
    </Stack>
  );
}

export default OrderSection;
