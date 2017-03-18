sed -n '/^The/ p' books.txt # match The at line start
sed -n '/o$/ p' books.txt   # lines ending in o
sed -n '/^.a/ p' books.txt  # a at 2nd char
sed -n '/^.[aiu]/ p' books.txt # a i or u at 2nd char
sed -n '/[^A-M]/ p' books.txt  # not starting with A - M
sed -n '/Pau?o?lo/ p' books.txt # matches Palo/Paulo/Paolo/Pauolo
