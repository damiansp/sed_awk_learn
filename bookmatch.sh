grep ' book.* ' bookwords.txt
# gets extras like "bookish"
echo "\n"

grep " [\"[{(]*book[]})\"?!.,;:'s]* " bookwords.txt
# misses book and "book" at the beginning, as well as book and book! at end
echo "\n"

egrep "(^| )[\"[{(]*book[]})\"?!.,;:'s]*( |$)" bookwords.txt
