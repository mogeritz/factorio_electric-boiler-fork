#!/bin/bash
rm *.zip
ver=$(jq ".version" info.json | tr -d '"')
mkdir electricboiler_mogeritz
rsync -r --exclude='electricboiler_mogeritz' * electricboiler_mogeritz/
zip -r  -x*\.vs -x*\.vscode -x*\.git -x*\.gitignore -x*\compress4factorio.sh  electricboiler_mogeritz_$ver.zip electricboiler_mogeritz/*
rm -r electricboiler_mogeritz
