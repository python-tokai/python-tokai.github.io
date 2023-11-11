#!/bin/sh

SOURCE_DIR=./docs/
FILE0=${SOURCE_DIR}/home.html
FILE1=${SOURCE_DIR}/index.html

# copy index file
if [ -e ${FILE0} ] && [ ! -e ${FILE1} ]; then
  cp -p ${FILE0} ${FILE1}
fi

# replace words
find ${SOURCE_DIR} -name '*.html' | xargs \
sed -i -e "s/home\.html/index\.html/g" \
    -i -e "s/..\/..\/..\/config\/groups-icon\.jpeg/https:\/\/media\.connpass\.com\/thumbs\/73\/22\/73224a4776ad558c01b0eb9be3a5b0da\.png/g"  \
    -i -e "s/>Python東海<\/a>/>Python東海(アーカイブ)<\/a>/g" \
    -i -e "s/style=\"display:inline;float:left;/style=\"/g"
