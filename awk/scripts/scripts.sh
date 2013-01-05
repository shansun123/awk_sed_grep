# print eq to print $0
echo -e "line1\nline2" | awk '{print}'

echo -------------------------------------------------

# example 1: using function. keyword can be function or func.
echo line1 | gawk '
BEGIN {
    b = "xujun";
}

func f(a) {
    b = a;
    print a;
}

function g(a) {
    print "This is a long long long long \
line. We can use \\ to continue in the next line." a
}

{
    print b;
    g(f("lanbo"));
    print b;
}'

echo -------------------------------------------------

# demo using .awk script
echo 1 | awk -f simple_demo.awk
