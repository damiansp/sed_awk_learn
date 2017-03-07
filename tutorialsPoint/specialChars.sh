sed '=' books.txt # prints line numbers between lines
sed '/P/ =' books.txt

sed 's/[[:digit:]]/Book number &/' books.txt
sed 's/[[:digit:]]*$/Pgs: &/' books.txt
