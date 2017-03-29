awk '{print}' marks.txt

awk 'BEGIN{printf "ID Name\t     Subject   Grade\n"} {print}' marks.txt

awk -f command.awk marks.txt
