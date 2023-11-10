#!/bin/sh

SOURCE_DIR=./docs/studymeeting

find ${SOURCE_DIR} -name '*.html' | xargs \
sed -i -e "s/home\.html/index\.html/g" \
    -i -e "s/..\/..\/..\/config\/groups-icon\.jpeg/https:\/\/media\.connpass\.com\/thumbs\/73\/22\/73224a4776ad558c01b0eb9be3a5b0da\.png/g"  \
    -i -e "s/メーリングリストはGoogle Groupを利用しています。アイコンからGoogle Groupに参加してください。/勉強会の開催はConnpassを利用しています。/g" \
    -i -e "s/\>Python東海\<\/a\>/\>Python東海(アーカイブ)\<\/a\>/g"
