# ARGC ARGV, similar to main method in C/C++
seq 1 10 | awk 'BEGIN {
    for(i = 0; i < ARGC; i++) {
        printf("[%s]=%s\n", i, ARGV[i]);
    }
}' hello world

echo -------------------------------------------------

awk 'BEGIN {
    for (env in ENVIRON) {
    	printf "%s=%s\n", env, ENVIRON[env];
    }
}'
