pub global activate protoc_plugin

mkdir -p lib/swid/ir/proto/pb
export PATH="$PATH":"$HOME/.pub-cache/bin"; protoc -I=lib/swid/ir/proto --dart_out=lib/swid/ir/proto/pb lib/swid/ir/proto/ir.proto