# we find that variable assignment is after BEGIN, and before BODY END.
gawk 'BEGIN {print "BEGIN: " var} {print "BODY: " var} END {print "END:" var}' var=1 a.txt 
