for f  in $(find test_driver -type f -not -name "*_test.dart" | grep -v lib)
do
    printf "$1 $f\n"

    flutter drive $1 --target=$f

    if [ $? != 0 ]; then
        exit 1
    fi
done
