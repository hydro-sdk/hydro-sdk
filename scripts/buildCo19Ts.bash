for f in test/co19/core/*.ts;
do
    node hydroc ts2hc --skip-sdk-tools-check --entry-point "$f" --module-name "$(basename $f)" --out-dir "assets/test/co19/core" --profile $1
done