# sub
echo hello, world | awk '{print "count of replaced substr:", sub(/ello/, "i"); print;}'

# index
awk 'BEGIN {
    print "index u:",index("xujun", "u");
    print "index x:",index("lanbo", "x");
}'

# length

# match
awk 'BEGIN {
    print "matching position", match("lanbo_xujun_shansun", /xujun/);
    printf "Matched at: %d, Matched substr length: %d\n", RSTART, RLENGTH;
}'

# split
awk 'BEGIN {
    n = split("1;2;3;4;5", arr, ";")
    for(i = 0; i < n; i++) { # for (i in arr) {
        printf "arr[%d]=%d\n", i, arr[i]
    }
}'

# sprintf
awk 'BEGIN {
    var = sprintf("%s, %s!", "Hello", "World")
    print var
}'

# substr
awk 'BEGIN {print substr("lanbo.xj", 2, 5)}'
awk 'BEGIN {print substr("lanbo.xj", 2)}'

# tolower and toupper


