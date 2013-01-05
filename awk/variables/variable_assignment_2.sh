# if we put variables after file name, then we find that assignment is after BODY
gawk 'BEGIN {print "BEGIN: " var} {print "BODY: " var} END {print "END:" var}' a.txt var=1

