# example: using array, which is always indexed by string
echo "1 2 3" | awk '{
    for (i = 0; i < NF; i++) {
        a[i] = i * 100;
    }
}

END {
    if(3 in a) {
        print "3 is in a"
    } else {
    	print "3 is not in a."
    }

    for(i in a) {
        printf "%s: %s\n", i, a[i];
    }
}'
