sed 's/,/ | /' books.txt # replace first instance of "," with " | "
sed 's/,/ | /g' books.txt # replace all instances
sed '/Pilg/ s/,/ | /g' books.txt
sed 's/,/ | /2' books.txt # replace the 2nd instance
sed -n 's/Coelho/COELHO/p' books.txt # print only the changed lines
sed -n 's/Coelho/COELHO/w junk.txt' books.txt # write changes to junk.txt
cat junk.txt
sed -n 's/PAOLO coelho/P. COELHO/pi' books.txt # case insensitive in match
echo "Three One Two" | sed 's|\(\w\+\) \(\w\+\) \(\w+\)|\2 \3 \1|'
echo "Three,One,Two" | sed 's|\(\w\+\),\(\w\+\),\(\w+\)|\2, \3, \1|'
sed -n 's/Paulo/PA\LULO/p' books.txt # \L: lower for all remaining
sed -n 's/Paulo/p\uaul\uo/p' books.txt # \u: upper for next 1
sed -n 's/Paulo/\Upaulo/p' books.txt   # \U: upper all remaining
sed -n 's/Paulo Coelho/\Upaulo \Ecoelho/p' # \E cancels \L or \U

