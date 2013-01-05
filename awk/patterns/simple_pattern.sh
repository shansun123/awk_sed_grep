# /regular expression/: extended regular expression.
seq 1 20 | awk '/3/ {print}'

echo ----------------------------------------------

seq 1 5 | awk '!/3/ {print}'

echo ----------------------------------------------

seq 1 50 | awk '/3/ && /4/ {print}'

echo ----------------------------------------------

# $n ~ /ere/
awk '$2~/lanbo/ {print}' a.txt

echo ----------------------------------------------

# how to use the special line
seq 1 5 | awk 'NR == 2 {print}'
