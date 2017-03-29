awk -f command.awk marks.txt # run an awk file
awk -v name=Jerry 'BEGIN{printf "Name = %s\n", name}' # supply a variable
awk --dump-variables '' # output global variables default out to awkvars.out
                        # does nothing on Mac
#cat awkvars.out
#awk --help # get help
awk --lint '' command.awk
awk --version
