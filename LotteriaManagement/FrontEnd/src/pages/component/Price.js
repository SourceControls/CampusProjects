import {Text} from '@mantine/core'
import {primaryColor} from '../../components/globalStyle'
function Price(props) {
    let price = props.data ? parseFloat(props.data).toLocaleString('vi-VN', {style: 'currency', currency: 'VND'}) : 0
    return (
        <Text
            weight='bolder'
            lineClamp={1}
            align='right'
            sx={(theme) => ({
                color: theme.colors[primaryColor][8],
            })}
            {...props}>
            {price}
        </Text>
    )
}

export default Price
