#! /bin/sh
# getmac -- print mm macro definition for $1
# Execute as, e.g.,
# getmac BL for the "BL" macro
sed -n "/^\.de$1/,/^\.\.$/p" /usr/lib/macros/mmt
