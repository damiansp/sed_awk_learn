awk 'BEGIN {print "Number of arguments =", ARGC}' One Two Three
awk 'BEGIN {
  for (i = 0; i < ARGC; ++i) {
    printf "ARGV[%d] = %s\n", i, ARGV[i];
  } }' one two three four

awk 'BEGIN { print "Conversion Format = ", CONVFMT }'

awk 'BEGIN { print ENVIRON["USER"] }'

awk 'END { print FILENAME }' marks.txt # FILENAME not prev defined

awk 'BEGIN { print "FS = " FS }' | cat -vte # FS: field separator

# NF: number of fields
echo -e "One Two\nOne Two Three\nOne Two Three Four" | awk 'NF > 2' 

# NR: number of records 
echo -e "One Two\nOne Two Three\nOne Two Three Four" | awk 'NR < 3'

# FNR
# OFMT: output format
awk 'BEGIN { print "OFMT = " OFMT }'

# OFS: output FS
awk 'BEGIN { print "OFS = " OFS }' | cat -vte

# ORS: output record separator
awk 'BEGIN { print "ORS = " ORS }' | cat -vte

# RLENGTH record length
awk 'BEGIN { if (match("One Two Three", "re")) {
    print RLENGTH;
  } }'

# RS: Record separator
awk 'BEGIN { print "RS = " RS }' | cat -vte

# RSTART: position of first match
awk 'BEGIN {
  if (match("One Two Three", "Thre")) { 
    print RSTART; 
  } }'

# SUBSEP: array index separator (def = \034)
awk 'BEGIN { print "SUBSEP = " SUBSEP }'

# $0 = entire input record
awk '{ print $0 }' marks.txt

# $n: the nth field of current record
awk '{ print $3 "\t" $4 }' marks.txt

# GNU awk only
# ARGIND, BINMODE, ERRNO, FIELDWIDTHS, IGNORECASE, LINT, PROCINFO, TEXTDOMAIN
