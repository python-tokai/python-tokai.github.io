#!/bin/sh

SOURCE_DIR=./docs/studymeeting

find ${SOURCE_DIR} -name '*.html' | xargs \
sed -i -e "s/home\.html/index\.html/g" \
#sed -i -e "s/studymeeting\.html/\//g" \
#    -i -e "s/.*\/home\.html/\//g" \
#    -i -e "s/https:\/\/connpass-tokyo\.s3\.amazonaws\.com\/thumbs\/c3\/4a\/c34aaa83808f935e2c1ef90d55f1ddfa\.png/https:\/\/media\.connpass\.com\/thumbs\/73\/22\/73224a4776ad558c01b0eb9be3a5b0da\.png/g"
