# if we put variables between files, then we find that assignment is after a's BODY and b.BEGIN
gawk 'BEGIN {print "BEGIN: " var} {print "BODY: " var} END {print "END:" var}' a.txt var=1 b.txt

