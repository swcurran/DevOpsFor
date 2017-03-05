#! /bin/bash

pres=$1
stripped=$1.stripped
stripped=`echo $pres | sed 's/.md.html/.stripped.html/'`
pdf=`echo $pres | sed 's/.md.html/.pdf/'`

# echo pres: $pres, stripped: $stripped, pdf: $pdf

# Strip out the incremental slide indicators - "--"

sed '/^--$/d' $pres | sed '/count:false/,/---/d' >$stripped

# Run decktape to create the screenshots and pdf

MSYS_NO_PATHCONV=1 docker run --rm -v `pwd`:/slides -v ~:/home/user astefanutti/decktape --screenshots $stripped $pdf
# MSYS_NO_PATHCONV=1 docker run --rm -v //c/users/swcur/personal/projects/DevOpsForProductOwners/presentation:/slides -v //c/users/swcur:/home/user astefanutti/decktape --screenshots $stripped $pdf

rm $stripped
