awk '{print $3 "\t" $4}' marks.txt # col/fields 3, 4
echo ''
awk '/a/ {print $0}' marks.txt # print lines matching /a/; same as:
echo ''
awk '/a/' marks.txt
echo ''
awk '/e/ {print $2 "\t" $3}' marks.txt
echo ''
awk '/e/{++cnt} END {print "Matched lines for /e/ = ", cnt}' marks.txt
echo ''
awk 'length($0) > 20' marks.txt # print lines if length > 20
