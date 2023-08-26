import {createSlice} from '@reduxjs/toolkit';
export const userSlice = createSlice({
    name: 'user',
    initialState: {
        id: '',
        image: '',
        name: '',
        role: '',
        email: '',
    },
    reducers: {
        updateUser: (state, action) => {
            state = {...action.payload};
        },
        refreshUser: (state) => {},
    },
});

export const {updateUser} = userSlice.actions;

export default userSlice.reducer;
