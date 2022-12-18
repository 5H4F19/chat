#! /usr/bin/env node

yarn create vite $1 --template react-ts

cd $1
yarn

# install tailwindcss
yarn add -D tailwindcss@latest postcss@latest autoprefixer@latest
npx tailwindcss init -p


# removing files
rm tailwind.config.cjs
rm -r src

# move essential folders
cp -r ~/Projects/scripts/{src,tailwind.config.cjs} ./

# installing nessessary files
yarn add react-router-dom react-icons
yarn dev
