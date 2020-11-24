import 'package:hydro_sdk/swid/ir/backend/translationUnitProducer.dart';
import 'package:hydro_sdk/swid/ir/backend/writeTranslationUnit.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/fixupNullability.dart';
import 'package:hydro_sdk/swid/swid.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';

void main(List<String> args) async {
  var visitor = await swid([args[0]]);

  for (var i = 0; i != visitor.enums.length; ++i) {
    await Future.forEach(
        TranslationUnitProducer(
          path: transformPackageUri(
            packageUri: visitor.enums[i].originalPackagePath,
          ),
          baseFileName:
              "${transformToCamelCase(str: visitor.enums[i].identifier)}",
          tsPrefixPaths: ["runtime"],
          dartPrefixPaths: [],
        ).produceFromSwidEnum(swidEnum: visitor.enums[i]),
        (x) => writeTranslationUnit(translationUnit: x));
  }

  for (var i = 0; i != visitor.classes.length; ++i) {
    if (visitor.classes[i].name == "Icons" ||
        visitor.classes[i].name == "CupertinoIcons" ||
        visitor.classes[i].name == "IconData" ||
        visitor.classes[i].name == "TextTreeConfiguration") {
      await Future.forEach(
          TranslationUnitProducer(
            path: transformPackageUri(
              packageUri: visitor.classes[i].originalPackagePath,
            ),
            baseFileName:
                "${transformToCamelCase(str: visitor.classes[i].name)}",
            tsPrefixPaths: ["runtime"],
            dartPrefixPaths: ["lib", "cfr", "builtins", "libs"],
          ).produceFromSwidClass(
              swidClass: fixupNullability(swidClass: visitor.classes[i])),
          (x) => writeTranslationUnit(translationUnit: x));
    }
  }
}
