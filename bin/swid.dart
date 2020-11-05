import 'package:hydro_sdk/swid/ir/backend/translationUnitProducer.dart';
import 'package:hydro_sdk/swid/ir/backend/writeTranslationUnit.dart';
import 'package:hydro_sdk/swid/swid.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';

void main() async {
  var visitor =
      await swid(["/Users/chgibb/Downloads/flutter/packages/flutter"]);

  for (var i = 0; i != visitor.enums.length; ++i) {
    TranslationUnitProducer(
      path: transformPackageUri(
        packageUri: visitor.enums[i].originalPackagePath,
      ),
      baseFileName: "${transformToCamelCase(str: visitor.enums[i].identifier)}",
      tsPrefixPaths: ["runtime"],
      dartPrefixPaths: [],
    )
        .produceFromSwidEnum(swidEnum: visitor.enums[i])
        ?.forEach((x) => writeTranslationUnit(translationUnit: x));
  }

  for (var i = 0; i != visitor.classes.length; ++i) {
    if (visitor.classes[i].name == "Icons" ||
        visitor.classes[i].name == "CupertinoIcons" ||
        visitor.classes[i].name == "IconData") {
      TranslationUnitProducer(
        path: transformPackageUri(
          packageUri: visitor.classes[i].originalPackagePath,
        ),
        baseFileName: "${transformToCamelCase(str: visitor.classes[i].name)}",
        tsPrefixPaths: ["runtime"],
        dartPrefixPaths: ["lib", "cfr", "builtins", "libs"],
      )
          .produceFromSwidClass(swidClass: visitor.classes[i])
          ?.forEach((x) => writeTranslationUnit(translationUnit: x));
    }
  }
}
