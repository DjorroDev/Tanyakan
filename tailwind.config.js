/** @type {import('tailwindcss').Config} */
module.exports = {
  darkMode: 'class',
  content: [
    "./resources/**/*.blade.php",
    "./resources/**/*.js",
    "./resources/**/*.vue",
  ],
  theme: {
    extend: { colors:{
      'primary': {
        "50": "#FEF8F6",
        "100": "#FDEDE7",
        "200": "#FBDBD0",
        "300": "#F9C2AF",
        "400": "#F6A689",
        "500": "#F2855E",
        "600": "#EF6939",
        "700": "#E74B13",
        "800": "#C23F10",
        "900": "#892D0B"
      },
      'base': {      
        "50": "#EFF6FB",
        "100": "#DAEAF6",
        "200": "#B1D3EC",
        "300": "#7FB6E1",
        "400": "#398FD0",
        "500": "#194769",
        "600": "#184263",
        "700": "#12324A",
        "800": "#0F293E",
        "900": "#0A1C29"
        },
      },
    },
  },
  plugins: [],
}
