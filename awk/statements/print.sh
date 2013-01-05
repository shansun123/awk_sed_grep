echo 1 2 | awk '{print $1, $2}'

echo 1 2 | awk '{print $1 $2}'

echo 1 2 | awk 'BEGIN {OFS=";"} {print $1, $2}'

# > will clear file content.
echo -e "1 2\n3 4" | awk '{print $1, $2 > "a.txt" }'

# >> wont clear, just append.
echo -e "1 2\n3 4" | awk '{print $1, $2 >> "b.txt" }'

# tee redirect and print to console.
echo -e "1 2\n3 4" | awk '{print $1, $2 }' | tee "c.txt"
