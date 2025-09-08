#!/bin/env bash

# brew install imagemagick
# Single row
# magick IMG_*.jpeg -resize x300 +append banner.jpeg

# Two rows
magick montage IMG_1750.jpeg IMG_1751.jpeg IMG_1763.jpeg \
  IMG_1766.jpeg IMG_1776.jpeg IMG_1777.jpeg IMG_1779.jpeg \
  IMG_1780.jpeg IMG_1790.jpeg IMG_3032.jpeg \
  -resize x300 -tile x2 -geometry +0+0 banner.jpeg