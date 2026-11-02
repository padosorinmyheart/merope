#!/bin/bash
# game → merope repo: add a proper document head for standalone hosting
set -e
G=/home/claude/game; R=/home/claude/merope
{ printf '<!doctype html>\n<html lang="ko">\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n<meta name="color-scheme" content="light only">\n<meta name="theme-color" content="#1E3050">\n'; cat $G/index.html; } > $R/index.html
cp $G/data.js $G/quiz.js $R/
