./node_modules/.bin/tsc
./node_modules/.bin/tsc -p sdk-tools/ts2hc/tsconfig.json

node scripts/buildLua52SdkTool
node scripts/buildDartSdkTools
node scripts/buildTsSdkTools