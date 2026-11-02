#!/bin/bash
# game → merope repo: add a proper document head for standalone hosting
set -e
G=/home/claude/game; R=/home/claude/merope
V=$(date +%Y%m%d%H%M%S)
{ printf '<!doctype html>\n<html lang="ko">\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n<meta name="color-scheme" content="light only">\n<meta name="theme-color" content="#1E3050">\n<meta name="merope-ver" content="%s">\n' "$V"; sed -e "s#src=\"data.js\"#src=\"data.js?v=$V\"#; s#src=\"quiz.js\"#src=\"quiz.js?v=$V\"#; s#src=\"recipes.js\"#src=\"recipes.js?v=$V\"#" $G/index.html; } > $R/index.html
cp $G/data.js $G/quiz.js $G/recipes.js $R/
printf '%s' "$V" > $R/version.txt
