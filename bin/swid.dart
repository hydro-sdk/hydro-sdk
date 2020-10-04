import 'package:hydro_sdk/swid/io/ts/tsOutSource.dart';
import 'package:hydro_sdk/swid/io/ts/writeTsOutSource.dart';
import 'package:hydro_sdk/swid/swid.dart';

void main() async {
  var visitor =
      await swid(["/Users/chgibb/Downloads/flutter/packages/flutter"]);

  for (var i = 0; i != visitor.enums.length; ++i) {
    await writeTsOutSource(
        prefixPaths: ["runtime"],
        tsOutSource: TsOutSource.fromEnum(swidEnum: visitor.enums[i]));
  }
}
