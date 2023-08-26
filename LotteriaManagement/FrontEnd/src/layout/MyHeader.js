import {Header, Image} from '@mantine/core';
import logo from '../assets/images/logo.svg';

function MyHeader(props) {
    return (
        <Header height={50} p='md' style={{display: 'flex', alignItems: 'center', height: '100%'}}>
            <Image src={logo} width='200px' mx='auto' />
        </Header>
    );
}

export default MyHeader;
