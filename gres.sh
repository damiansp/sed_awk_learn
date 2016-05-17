# A program for making single replacements
if [ $# -lt "3" ]
then
    echo Usage: gres pattern replacement file
    exit 1
fi

pattern=$1
replacement=$2

if [ -f $3 ]
then
    file=$3
else
    echo $3 is not a file.
    exit 1
fi

A="`echo | tr '\012' '\001' `"

sed -e "s$A$pattern$A$replacement$A" $file
