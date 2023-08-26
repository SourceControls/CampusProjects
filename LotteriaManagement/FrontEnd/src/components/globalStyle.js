export const primaryColor = 'red'
const globalStyle = {
    primaryColor,
    primaryShade: 8,
    components: {
        ActionIcon: {
            styles: (theme) => ({
                root: {
                    color: theme.colors[primaryColor][7],
                    background: theme.colors[primaryColor][1],
                    '&:hover': {
                        background: theme.colors[primaryColor][2],
                    },
                },
            }),
        },
    },
}

export default globalStyle
