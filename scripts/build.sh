#!/bin/bash

printf "Cleaning dist\n"
rm -rf dist
mkdir dist

printf "Copying assets\n"
cp src/assets/* dist/

printf "Converting md to HTML\n"
CONVERTED_MARKDOWN=`./node_modules/.bin/showdown makehtml -i src/bookshelf.md`

printf "Injecting HTML\n"
sed -i "/%CONTENT%/a $(echo $CONVERTED_MARKDOWN)" dist/index.html
sed -i "/%CONTENT%/d" dist/index.html

printf "Minifying HTML\n"
./node_modules/.bin/html-minifier --config-file .html-minifier.json --output dist/index.html dist/index.html

printf "Minifying CSS\n"
./node_modules/.bin/cleancss -O 1 --output dist/style.css dist/style.css
