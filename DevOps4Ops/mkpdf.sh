#! /bin/bash

set -x

: ${1?"Usage: $0 Name_of_Presentation_File"}

pres=$1
# stripped=$1.stripped.html
stripped=`echo $pres | sed 's/.md.html/.stripped.html/'`
pdf=`echo $pres | sed 's/.md.html/.pdf/'`

# echo pres: $pres, stripped: $stripped, pdf: $pdf

# Strip out the incremental slide indicators - "--"

sed '/^--$/d' $pres | sed '/count:false/,/---/d' >$stripped

# Run decktape to create the screenshots and pdf

MSYS_NO_PATHCONV=1 docker run --rm -v `pwd`:/slides -v ~:/home/user astefanutti/decktape:1.0.0 --screenshots $stripped $pdf

rm $stripped
