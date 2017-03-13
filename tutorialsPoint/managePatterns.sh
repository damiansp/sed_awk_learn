cat books.txt
# n prints contents in pattern buffer, clears the pattern buffer, fetches the
# next line into the pattern buffer and applies commands on it.  Here is will
# print everything
sed 'n' books.txt

# Example
# sed command 1
# sed command 2
# sed command 3
# n command
# sed command 4
# sed command 5

# Sed applies first 3 commandds on buffer, clears buffer, fetches the next line
# and applies 4th and 5th commands thereafter

cat books.txt

# print only author names
sed -n 'x;n;p' books.txt
# reads first line;
# x moves line to hold buffer
# n fetches next line into pattern buffer--control passes to command following
# n: p
# p prints the pattern buffer

sed -n 'x;n;x;p' books.txt

# h copies from pattern buffer to hold buffer (overwriting)
# Print only books by Paulo
sed -n '/Paulo/!h; /Paulo/{x;p}' books.txt
# line copied to hold buffer if NOT matching /Paulo/

# H copies from pattern buffer and appends to hold buffer
sed -n '/Paulo/!h; /Paulo/{H;x;p}' books.txt

# g copies data from hold buffer to pattern buffer (overwriting)
sed -n '/Paulo/!h; /Paulo/{p;g;p}' books.txt

# G is the append version of g
sed -n '/Paulo/!h; /Paulo/{G;p};' books.txt
sed -n '/Paulo/!h; /Paulo/{x;G;p}' books.txt
