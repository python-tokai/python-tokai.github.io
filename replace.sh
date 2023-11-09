#!/bin/sh

SOURCE_DIR=./docs/studymeeting

a0="https:\/\/connpass-tokyo\.s3\.amazonaws\.com\/thumbs\/c3\/4a\/c34aaa83808f935e2c1ef90d55f1ddfa\.png"
a1="https:\/\/media\.connpass\.com\/thumbs\/73\/22\/73224a4776ad558c01b0eb9be3a5b0da\.png"

b0="studymeeting.html"
b1="studymeeting\/"

c0=studymeeting\/home.html
c1=\/

#find ${SOURCE_DIR} -name '*.html' | xargs \
#sed -i -e "s/${a0}/${a1}/g" \
#    -i -e "s/${b0}/${b1}/g" \
#    -i -e "s/${c0}/${c1}/g"

find ${SOURCE_DIR} -name '*.html' | xargs \
sed -i -e "s/studymeeting\.html/\//g" \
    -i -e "s/.*\/home\.html/\//g" \
    -i -e "s/https:\/\/connpass-tokyo\.s3\.amazonaws\.com\/thumbs\/c3\/4a\/c34aaa83808f935e2c1ef90d55f1ddfa\.png/https:\/\/media\.connpass\.com\/thumbs\/73\/22\/73224a4776ad558c01b0eb9be3a5b0da\.png/g"
