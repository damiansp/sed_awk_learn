# take input file sedscr in ./ and apply command line instructions and write
# to tmp file
for x
do
    sed -f sedscr $x > tmp.$x
done
