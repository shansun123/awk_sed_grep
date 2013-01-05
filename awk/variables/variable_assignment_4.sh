# if assign using -v, it's before BEGIN
gawk -v var=1 'BEGIN {print "BEGIN: " var} {print "BODY: " var} END {print "END:" var}' a.txt 
