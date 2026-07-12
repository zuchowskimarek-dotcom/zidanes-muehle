#!/bin/sh
# Builds the website:
#   game.html  — standalone game, generated from zidanes-muehle.html (artifact fragment);
#                the fragment's leading title/meta lines move into <head>, the rest is <body>.
#   index.html — the landing page = the 3D intro (copy of intro.html), so the
#                cinematic plays on every visit before flowing into game.html.
set -e
cd "$(dirname "$0")"

{
  printf '<!DOCTYPE html>\n<html lang="de">\n<head>\n<meta charset="utf-8">\n'
  awk '/^<(title|meta)/{print} /^<style>/{exit}' zidanes-muehle.html
  printf '<meta name="theme-color" content="#1D1610">\n'
  printf '<link rel="icon" href="icon.svg" type="image/svg+xml">\n'
  printf '<link rel="apple-touch-icon" href="apple-touch-icon.png">\n'
  printf '</head>\n<body>\n'
  awk '/^<style>/{found=1} found{print}' zidanes-muehle.html
  printf '</body>\n</html>\n'
} > game.html

cp intro.html index.html

echo "game.html + index.html built"
