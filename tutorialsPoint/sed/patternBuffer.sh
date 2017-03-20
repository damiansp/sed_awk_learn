sed 'p' books.txt        # print
echo ''
sed -n 'p' books.txt     # print, supress default printing
echo ''
sed -n '3p' books.txt    # print the 3rd line
echo ''
sed -n '2,5p' books.txt  # print lines 2 through 5
echo ''
sed -n '$ p' books.txt   # print last line
echo ''
sed -n '3,$ p' books.txt # print lines 3 - end
echo ''
sed -n '2,+2 p' books.txt  # print line 2 and the next 2
echo ''
sed -n '1~2 p' books.txt # print line 1 and every second line after
