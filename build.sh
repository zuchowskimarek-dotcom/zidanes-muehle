#!/bin/sh
# Builds index.html (standalone page) from zidanes-muehle.html (artifact fragment).
# The fragment's first lines (title + meta tags) move into <head>; the rest becomes <body>.
set -e
cd "$(dirname "$0")"

{
  printf '<!DOCTYPE html>\n<html lang="de">\n<head>\n<meta charset="utf-8">\n'
  # title + meta lines from the top of the fragment
  awk '/^<(title|meta)/{print} /^<style>/{exit}' zidanes-muehle.html
  printf '<meta name="theme-color" content="#1D1610">\n'
  printf '<link rel="icon" href="icon.svg" type="image/svg+xml">\n'
  printf '<link rel="apple-touch-icon" href="apple-touch-icon.png">\n'
  printf '</head>\n<body>\n'
  # everything from <style> onward
  awk '/^<style>/{found=1} found{print}' zidanes-muehle.html
  printf '</body>\n</html>\n'
} > index.html

echo "index.html built"
