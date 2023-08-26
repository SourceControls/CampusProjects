import {SimpleGrid, Image, Group, Text, Badge, Button, Stack} from '@mantine/core'
import {IconNewSection, IconPlus} from '@tabler/icons-react'
import Price from './../../component/Price'
import CardDetail from './CardDetail'
import {CartProvider} from 'react-use-cart'
function GridFood(props) {
    return (
        <SimpleGrid cols={4}>
            {props.foodList &&
                props.foodList.map((e, index) => {
                    return (
                        e.available == 1 && (
                            <CardDetail key={index} name={e.name} price={e.price} image={e.image} item={e}></CardDetail>
                        )
                    )
                })}
        </SimpleGrid>
    )
}

export default GridFood
