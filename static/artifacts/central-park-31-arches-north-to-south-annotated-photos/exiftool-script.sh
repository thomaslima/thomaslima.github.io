#!/bin/env bash

# brew install exiftool

exiftool \
  -overwrite_original \
  -Artist="Thomas Ferreira de Lima" \
  -Copyright="© 2025 Thomas Ferreira de Lima. CC-BY-SA 4.0" \
  -Creator="Thomas Ferreira de Lima" \
  -XMP-dc:Creator="Thomas Ferreira de Lima" \
  -XMP-dc:Rights="© 2025 Thomas Ferreira de Lima. CC-BY-SA 4.0" \
  -IPTC:By-line="Thomas Ferreira de Lima" \
  -IPTC:CopyrightNotice="© 2025 Thomas Ferreira de Lima. CC-BY-SA 4.0" \
  *.jpeg

# Remove identifiers + device info, keep orientation & color profile
exiftool \
  -overwrite_original \
  -MakerNotes:all= \
  -Make= \
  -Model= \
  -SerialNumber= \
  -OwnerName= \
  -Software= \
  -HostComputer= \
  -ContentIdentifier= \
  -PhotoIdentifier= \
  -Lens*= \
  -FocalLength= \
  -FocalLengthIn35mmFormat= \
  *.jpeg
