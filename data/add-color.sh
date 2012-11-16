#!/bin/sh

gdaldem color-relief -co compress=lzw -alpha flood.tif intensity-gradient.txt flood-relief.tif

gdaldem hillshade -alt 60 -az 315 -co compress=lzw flood.tif flood-hillshade.tif 

gdaldem slope -co compress=lzw flood.tif flood-slope.tif

gdaldem color-relief -co compress=lzw -alpha flood-slope.tif slope-ramp.txt flood-slopeshade.tif 

nik2img.py flood-hillslopeshade.xml flood-hillslopeshade.tif -d 12000 15200

nik2img.py flood-pretty.xml flood-pretty.tif -d 12000 15200
