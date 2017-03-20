# delete lines 1, 2, and 5
sed -e '1d' -e '2d' -e '5d' books.txt

# generate a short sed script
echo -e "1d\n2d\n5d" > commands.txt
cat commands.txt

# execute script
sed -f commands.txt books.txt

# suppress default printing behavior (no echoing to std out)
sed -n '' quote.txt

# print each line twice
sed -e '' -e 'p' quote.txt

# -f uses a file of editing commands
echo "p" > commands
sed -nf commands quote.txt


