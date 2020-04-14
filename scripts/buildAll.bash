for f in examples/*; 
do
    node dist/compiler -t "$f/index.ts" -m "$(basename $f)" -d "assets/examples" -p $1
done

for f in test/widget/*.ts;
do
    node dist/compiler -t "$f" -m "$(basename $f)" -d "assets/test/widget" -p $1
done