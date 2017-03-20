# Delete
sed 'd' books.txt # delete all lines
sed '4d' books.txt # delete line 4
sed '2, 4 d' books.txt # delete lines 2 - 4
sed '/Paulo/d' books.txt # delete lines matching /Paulo/
sed '/Storm/,/Fellowship/d' books.txt # delete from first match of /Storm/ to
                                      # following match of /Fellowship/

# Write
sed -n 'w books.bak' books.txt # copy books.txt to books.bak
sed -n '2~2 w junk.txt' books.txt # starting from 2, write every 2 
cat junk.txt

sed -n -e '/Martin/ w Martin.txt'\
    -e '/Coelho/ w Coelho.txt'\
    -e '/Tolkien/ w Tolkien.txt' books.txt
cat Martin.txt

# Append
sed '4 a 7) Adultry, Paolo Coelho, 234' books.txt # append after line 4
cat books.txt

sed '$ a 7) Adultry, Paolo Coelho, 234' books.txt # append to end
cat books.txt

sed '/Alch/ a 7) Adultry, Paolo Coelho, 234' books.txt # append after ea match
cat books.txt

sed '/The/ a 7) Adultry, Paolo Coelho, 234' books.txt
cat books.txt

# Change/Replace
sed '3 c 3) Adultry, Paolo Coelho, 324' books.txt # update line 3
sed '/Alch/ c The Alchemeist, Paolo Colho, 199' books.txt
sed '4, 6 c 4) Adultry, Paolo Coelho, 432' books.txt

# Insert
# Same as append by occurs BEFORE specified line
sed '4 i 7) The Sparrow, Mary Doria Russel, 337' books.txt

# Translate
echo "1 5 15 20" | sed 'y/151520/IVXVXX/'

# l command (display/disambiguate non-printed characters and whitespace)
sed 's/ /\t/g' books.txt > junk.txt
sed -n 'l' junk.txt
# also wraps lines
sed -n 'l 25' books.txt

# Quit
sed '3 q' books.txt # moves through line 3 then quits
sed '/Alch/ q' books.txt
sed '/Alch/ q 100' books.txt # exit with exit status = 100
echo $?

# Read
echo "This is junk text." > junk.txt
sed '3 r junk.txt' books.txt # read and insert junk.txt after line 3
sed '3, 5 r junk.txt' books.txt # inserts after lines 3, 4, 5

# Execute
sed '3 e date' books.txt # insert date after line 3
sed '/Paulo/ e date' books.txt
echo -e "date\ncal\nuname" > commands.txt
cat commands.txt
sed 'e' commands.txt

# Misc
sed 'N; s/\n/, /g' books.txt
sed -n 'N;P' books.txt
sed --version



