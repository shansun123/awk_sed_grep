# we can do something between BEGIN and BODY
# before body, we can make a expression, when true exec body, else jump to END
gawk -v var=1 'BEGIN { a = 1} ( a = a + 1 ) && a > 3 { if( a > 3 ) print "BODY: " a; else print "ESCAPE: " $0; } END { print "END:" a }' c.txt 

echo ---------------------------------------------

gawk -v var=1 'BEGIN { a = 0 } a = a + 1 { if( a > 3 ) print "BODY: " a; else print "ESCAPE: " $0; } END { print "END:" a }' c.txt 
