sed -n '
h;n;H;x
s/\n/, /         
/Paulo/!b Print
s/^/- /
:Print
p' books.txt


# ?
# replace \n with comma
# if 'Paulo' not found, jump to print
# insert '- ' at the beginning of the line
# Print label
# print
