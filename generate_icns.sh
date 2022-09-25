#!/bin/bash

PNG_MASTER="./data/icons/ase256.png"
ICONSET_FOLDER="./build/AppIcon.iconset"

mkdir -p $ICONSET_FOLDER
sips -z 16 16     $PNG_MASTER --out $ICONSET_FOLDER/icon_16x16.png
sips -z 32 32     $PNG_MASTER --out $ICONSET_FOLDER/icon_16x16@2x.png
sips -z 32 32     $PNG_MASTER --out $ICONSET_FOLDER/icon_32x32.png
sips -z 64 64     $PNG_MASTER --out $ICONSET_FOLDER/icon_32x32@2x.png
sips -z 128 128   $PNG_MASTER --out $ICONSET_FOLDER/icon_128x128.png
sips -z 256 256   $PNG_MASTER --out $ICONSET_FOLDER/icon_128x128@2x.png
sips -z 256 256   $PNG_MASTER --out $ICONSET_FOLDER/icon_256x256.png
sips -z 512 512   $PNG_MASTER --out $ICONSET_FOLDER/icon_256x256@2x.png
sips -z 512 512   $PNG_MASTER --out $ICONSET_FOLDER/icon_512x512.png

cp $PNG_MASTER $ICONSET_FOLDER/icon_512x512@2x.png
iconutil -c icns $ICONSET_FOLDER
rm -R $ICONSET_FOLDER
