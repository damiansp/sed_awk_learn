sed -n '
h;n;H;x
s/\n/, /
:Loop
/Paulo/s/^/-/
/----/!t Loop
p' books.txt

# Find lines with Paulo; replace ^ (line start) with -
# if not "----" return to Loop label
