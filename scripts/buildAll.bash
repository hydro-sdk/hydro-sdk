for f in examples/*; 
do
    node compiler -t "$f/index.ts" -m "$(basename $f)" -d "assets/examples" -p $1
done

