for f in apps/*; 
do
    printf "$f\n"
    ./node_modules/.bin/tstl -p $f/tsconfig.json
    ./../luac.5.2.4 -o assets/$f.lc $f/index.lua
    printf "    $(du -sh assets/$f.lc)\n"
done

