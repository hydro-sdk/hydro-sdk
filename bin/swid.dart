import 'package:hydro_sdk/swid/io/ts/tsOutSource.dart';
import 'package:hydro_sdk/swid/io/ts/writeTsOutSource.dart';
import 'package:hydro_sdk/swid/ir/ts/tsEnum.dart';
import 'package:hydro_sdk/swid/swid.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';

void main() async {
  var visitor =
      await swid(["/Users/chgibb/Downloads/flutter/packages/flutter"]);

  for (var i = 0; i != visitor.enums.length; ++i) {
    await writeTsOutSource(
        prefixPaths: ["runtime"],
        tsOutSource: TsOutSource(
            path: transformPackageUri(
              packageUri: visitor.enums[i].originalPackagePath,
            ),
            fileName:
                "${transformToCamelCase(str: visitor.enums[i].identifier)}.ts",
            ir: [TsEnum(swidEnum: visitor.enums[i])]));
  }
}
