#!/usr/bin/env bash

TEMP=temp/favicon
STATIC=dja/static/favicon
TEMPLATES=dja/templates/favicon 

mkdir -p ${STATIC} ${TEMPLATES} ${TEMP}

envsubst < favicon/favicon-settings.template > ${TEMP}/favicon-settings.json

npx realfavicon generate favicon/favicon.svg ${TEMP}/favicon-settings.json ${TEMP}/output-data.json ${STATIC}

echo "" > ${TEMP}/favicon.html

npx realfavicon inject ${TEMP}/output-data.json ${TEMP} ${TEMP}/favicon.html

sed -n '/<head>/,/<\/head>/p' ${TEMP}/favicon.html | sed "s/..head.//g" | sed 's/^[ \t]*//' > ${TEMPLATES}/favicon.html

