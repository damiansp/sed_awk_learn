sed -n '/Paulo/ p' books.txt # print lines matching Paulo
sed -n '/Alchem/, 5 p' books.txt # print first line matching Alchem to line 5
sed -n '/Pilgrim/, $ p' books.txt # print first line matching Pilgrim to end
sed -n '/Two/, /Pilgrim/ p' books.txt # print first line matching Two to the
                                      # following line matching Pilgrim
