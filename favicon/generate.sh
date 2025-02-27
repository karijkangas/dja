#!/usr/bin/env bash

mkdir -p dja/static/favicon dja/templates/favicon temp

envsubst < favicon/favicon-settings.template > temp/favicon-settings.json

npx realfavicon generate ./favicon/favicon.svg ./temp/favicon-settings.json ./temp/output-data.json ./dja/static/favicon

echo "" > temp/favicon.html

npx realfavicon inject temp/output-data.json temp temp/favicon.html

sed -n '/<head>/,/<\/head>/p'  temp/favicon.html | sed "s/..head.//g" | sed 's/^[ \t]*//' > dja/templates/favicon/favicon.html

