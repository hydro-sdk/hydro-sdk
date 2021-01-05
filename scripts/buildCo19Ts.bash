for f in test/co19/core/*.ts;
do
    node dist/compiler -t "$f" -m "$(basename $f)" -d "assets/test/co19/core" -p $1
done