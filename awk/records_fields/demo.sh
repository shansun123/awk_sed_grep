gawk '{print $1}' a.txt | head -3

echo --------------------------------------------

# NF means last field.
gawk '{print $NF}' a.txt | head -3

echo --------------------------------------------

# $(NF-1) means last second field.
gawk '{print $(NF-1)}' a.txt | head -3

echo --------------------------------------------

# $(f-1): we can do calc in $().
gawk '{print $(f-1)}' f=3 a.txt | head -3

echo --------------------------------------------

# sed 's/\t/|/g' a.txt > b.txt

gawk -F"|" '{print $2}' b.txt

echo --------------------------------------------

# same to the usage above. FS stands for Field Separator.
gawk -v FS="|" '{print $2}' b.txt

echo --------------------------------------------

# set RS, which means Record Separator. $0 is the entire record.
gawk -v RS="|" '{print $0}' b.txt | head -3

echo --------------------------------------------

# we can set RS/FS in BEGIN block.
gawk 'BEGIN {RS="\n";FS="|"} {print $1}' b.txt | head -3
