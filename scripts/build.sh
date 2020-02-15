#!/bin/bash

set -eou pipefail

printf "Cleaning dist\n"
rm -rf dist
mkdir dist

printf "Copying assets\n"
cp src/assets/* dist/

printf "Converting md to HTML\n"
CONVERTED_BOOKSHELF_MARKDOWN=`./node_modules/.bin/showdown makehtml -i src/bookshelf.md`
CONVERTED_TODO_MARKDOWN=`./node_modules/.bin/showdown makehtml -i src/todo.md`

printf "Injecting HTML\n"
# Replaces %CONTENT% %FOOTER% %SCRIPT% in dist/*.html files
# This must be done BEFORE minification as sed matches the entire line
sed -i -e "/%CONTENT%/a $(echo $CONVERTED_BOOKSHELF_MARKDOWN)" -e "/%CONTENT%/d" dist/index.html
sed -i -e "/%FOOTER%/r src/partials/_footer.html" -e "/%FOOTER%/d" dist/index.html
sed -i -e "/\/\/%SCRIPT%/r src/partials/_script.js" -e "/\/\/%SCRIPT%/d" dist/index.html
sed -i -e "/%CONTENT%/a $(echo $CONVERTED_TODO_MARKDOWN)" -e "/%CONTENT%/d" dist/todo.html
sed -i -e "/%FOOTER%/r src/partials/_footer.html" -e "/%FOOTER%/d" dist/todo.html
sed -i -e "/\/\/%SCRIPT%/r src/partials/_script.js" -e "/\/\/%SCRIPT%/d" dist/todo.html

printf "Minifying HTML\n"
./node_modules/.bin/html-minifier --config-file .html-minifier.json --output dist/index.html dist/index.html
./node_modules/.bin/html-minifier --config-file .html-minifier.json --output dist/todo.html dist/todo.html

printf "Minifying CSS\n"
./node_modules/.bin/cleancss -O 1 --output dist/style.css dist/style.css
