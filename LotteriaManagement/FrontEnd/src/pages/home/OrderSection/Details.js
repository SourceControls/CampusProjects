import {
  Group,
  Image,
  Stack,
  Title,
  Text,
  ActionIcon,
  Badge,
  Paper,
  Button,
  ScrollArea,
} from "@mantine/core";
import { IconMinus, IconPlus, IconTrash } from "@tabler/icons-react";
import { useState } from "react";
import { useCart } from "react-use-cart";
import Price from "../../component/Price";
import { CartProvider } from "react-use-cart";

function Details() {
  const [quantity, setQuantity] = useState(1);
  const {
    item,
    isEmpty,
    totalUniqueItems,
    items,
    totalItems,
    cartTotal,
    updateItemQuantity,
    removeItem,
    emptyCart,
  } = useCart();
  if (isEmpty) return <h1></h1>;
  return (
    <CartProvider>
      {items.map((item, index) => (
        <Paper shadow="sm" withBorder mb={6}>
          <Group p="sm" key={index}>
            <Image
              src={item.image}
              height={60}
              width={60}
              alt="FoodName"
            />
            <Stack style={{ flexGrow: 1 }}>
              <Group position="apart" style={{ flexGrow: 1 }}>
                <Text weight={500} lineClamp={1}>
                  {item.name}
                </Text>
                <ActionIcon onClick={() => removeItem(item.id)} variant="filled">
                  <IconTrash />
                </ActionIcon>
              </Group>
              <Group position="apart">
                <Price data={parseFloat(item.price)}></Price>
                <Group>
                  <ActionIcon
                    onClick={() => updateItemQuantity(item.id, item.quantity-1)}
                  >
                    <IconMinus />
                  </ActionIcon>
                  <Badge size="xl">{item.quantity}</Badge>

                  <ActionIcon onClick={() => updateItemQuantity(item.id, item.quantity+1)}>
                    <IconPlus />
                  </ActionIcon>
                </Group>
              </Group>
            </Stack>
          </Group>
        </Paper>
      ))}
    </CartProvider>
  );
}

export default Details;
