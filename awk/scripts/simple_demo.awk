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
}
