import {SimpleGrid, Card, Image, Group, Text, Badge, Button, Stack} from '@mantine/core'
import {IconNewSection, IconPlus} from '@tabler/icons-react'
import Price from '../../component/Price'
import {useCart} from 'react-use-cart'

function CardDetail(props) {
    const {addItem} = useCart()

    return (
        <Card shadow='sm' padding='lg' radius='md' withBorder>
            <Card.Section>
                <Image
                    src={props.image || 'https://static.kfcvietnam.com.vn/images/items/lg/D1-new.jpg?v=4aj0lg'}
                    height={200}
                    fit='cover'
                    alt='FoodName'
                />
            </Card.Section>
            <Stack position='apart' spacing='0'>
                <Text weight={500} lineClamp={1}>
                    {props.name}
                </Text>
                <Price data={parseFloat(props.price)}></Price>
            </Stack>

            <Button fullWidth mt='xs' radius='md' leftIcon={<IconPlus />} onClick={() => addItem(props.item)}>
                Thêm vào order
            </Button>
        </Card>
    )
}

export default CardDetail
