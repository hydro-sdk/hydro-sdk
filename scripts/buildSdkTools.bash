./node_modules/.bin/tsc || exit 1
./node_modules/.bin/tsc -p sdk-tools/ts2hc/tsconfig.json || exit 1

node scripts/buildLua52SdkTool || exit 1
node scripts/buildDartSdkTools "$@" || exit 1
node scripts/buildTsSdkTools || exit 1