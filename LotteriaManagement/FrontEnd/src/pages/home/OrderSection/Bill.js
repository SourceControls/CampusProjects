import {Divider, Group, Stack, Text, Title} from '@mantine/core';
import {primaryColor} from '../../../components/globalStyle';
import Price from '../../component/Price';
import { useCart } from "react-use-cart";

function Bill(props) {
    const {
        cartTotal,
      } = useCart();
    return (
        <Stack bg='#f8f8f8' p='md'>
            <Title order={3}>Hóa đơn</Title>
            <Divider size='md' color={primaryColor} />
            <Group position='apart'>
                <Text>Tạm tính:</Text>
                <Price data={cartTotal} align='right' />
            </Group>
            <Group position='apart'>
                <Text>Khuyến mại:</Text>
                {!props.promotion?<Price data={0} align='right' />:<Price data={0-cartTotal*(parseFloat(props.promotion/100))} align='right' />}
            </Group>
            <Divider size='md' color={primaryColor} />
            <Group position='apart'>
                <Text size='lg' fw='bold'>
                    Tổng:
                </Text>
                {!props.promotion?<Price data={cartTotal} align='right' />: <Price data={cartTotal-cartTotal*(parseFloat(props.promotion/100))} align='right' />}
            </Group>
        </Stack>
    );
}

export default Bill;
