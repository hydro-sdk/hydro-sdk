for f in examples/*; 
do
    node hydroc ts2hc --skip-sdk-tools-check --entry-point "$f/index.ts" --module-name "$(basename $f)" --out-dir "assets/examples" --profile $1
done

for f in test/widget/*.ts;
do
    node hydroc ts2hc --skip-sdk-tools-check --entry-point "$f" --module-name "$(basename $f)" --out-dir "assets/test/widget" --profile $1
done

for f in test/hot/stateful/*.ts;
do
    node hydroc ts2hc --skip-sdk-tools-check --entry-point "$f" --module-name "$(basename $f)" --out-dir "assets/test/hot/stateful" --profile $1
done

for f in test/unit/dart/async/*.ts;
do
    node hydroc ts2hc --skip-sdk-tools-check --entry-point "$f" --module-name "$(basename $f)" --out-dir "assets/test/unit/dart/async" --profile $1
done

for f in test/unit/dart/collection/*.ts;
do
    node hydroc ts2hc --skip-sdk-tools-check --entry-point "$f" --module-name "$(basename $f)" --out-dir "assets/test/unit/dart/collection" --profile $1
done

for f in test/unit/dart/core/*.ts;
do
    node hydroc ts2hc --skip-sdk-tools-check --entry-point "$f" --module-name "$(basename $f)" --out-dir "assets/test/unit/dart/core" --profile $1
done

for f in test/unit/dart/ui/*.ts;
do
    node hydroc ts2hc --skip-sdk-tools-check --entry-point "$f" --module-name "$(basename $f)" --out-dir "assets/test/unit/dart/ui" --profile $1
done

for f in test/unit/flutter/foundation/*.ts;
do
    node hydroc ts2hc --skip-sdk-tools-check --entry-point "$f" --module-name "$(basename $f)" --out-dir "assets/test/unit/flutter/foundation" --profile $1
done

for f in test/unit/ts/*.ts;
do
    node hydroc ts2hc --skip-sdk-tools-check --entry-point "$f" --module-name "$(basename $f)" --out-dir "assets/test/unit/ts" --profile $1
done
