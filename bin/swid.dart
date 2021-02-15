import 'package:hydro_sdk/swid/ir/backend/dart/produceDartTranslationUnitsFromBarrelSpec.dart';
import 'package:hydro_sdk/swid/ir/backend/translationUnitProducer.dart';
import 'package:hydro_sdk/swid/ir/backend/util/barrelMember.dart';
import 'package:hydro_sdk/swid/ir/backend/util/resolveBarrelSpecs.dart';
import 'package:hydro_sdk/swid/ir/backend/writeTranslationUnit.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/fixupNullability.dart';
import 'package:hydro_sdk/swid/swid.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';

void main(List<String> args) async {
  var visitor = await swid([args[0]]);

  for (var i = 0; i != visitor.enums.length; ++i) {
    await Future.forEach(
        TranslationUnitProducer(
          prefixPaths: ["runtime"],
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
  print(visitor.classes.length);
  var classes = visitor.classes
      .where((x) =>
          x.name == "Icons" ||
          x.name == "CupertinoIcons" ||
          x.name == "IconData" ||
          x.name == "TextTreeConfiguration" ||
          x.name == "DiagnosticsNode" ||
          x.name == "DiagnosticsSerializationDelegate" ||
          x.name == "DiagnosticPropertiesBuilder" ||
          x.name == "Diagnosticable" ||
          x.name == "DiagnosticableTree" ||
          x.name == "Key" ||
          x.name == "Size" ||
          x.name == "Offset" ||
          x.name == "OffsetBase" ||
          x.name == "Rect" ||
          x.name == "AccessibilityFeatures" ||
          x.name == "CallbackHandle" ||
          x.name == "RRect" ||
          x.name == "Path" ||
          x.name == "PathMetric" ||
          x.name == "PathMetrics" ||
          x.name == "IterableBase" ||
          x.name == "Tangent" ||
          x.name == "Iterable" ||
          x.name == "Iterator" ||
          x.name == "EfficientLengthIterable" ||
          x.name == "Set" ||
          x.name == "List" ||
          x.name == "Float64List" ||
          x.name == "ByteBuffer" ||
          x.name == "TypedData" ||
          x.name == "ByteData" ||
          x.name == "Float32List" ||
          x.name == "Float32x4List" ||
          x.name == "Float64List" ||
          x.name == "Float64x2List" ||
          x.name == "Int16List" ||
          x.name == "Int32List" ||
          x.name == "Int32x4List" ||
          x.name == "Int64List" ||
          x.name == "Int8List" ||
          x.name == "Uint16List" ||
          x.name == "Uint32List" ||
          x.name == "Uint64List" ||
          x.name == "Uint8ClampedList" ||
          x.name == "Uint8List" ||
          x.name == "Float32x4" ||
          x.name == "Float64x2" ||
          x.name == "Int32x4" ||
          x.name == "Endian" ||
          x.name == "_TypedFloatList" ||
          x.name == "Random")
      .toList();
  for (var i = 0; i != classes.length; ++i) {
    await Future.forEach(
        TranslationUnitProducer(
          prefixPaths: ["runtime"],
          path: transformPackageUri(
            packageUri: classes[i].originalPackagePath,
          ),
          baseFileName: "${transformToCamelCase(str: classes[i].name)}",
          tsPrefixPaths: ["runtime"],
          dartPrefixPaths: ["lib", "cfr", "builtins", "libs"],
        ).produceFromSwidClass(
            swidClass: fixupNullability(swidClass: classes[i])),
        (x) => writeTranslationUnit(translationUnit: x));
  }

  await Future.forEach(
      produceDartTranslationUnitsFromBarrelSpec(
        packageName: "hydro_sdk",
        prefixPaths: ["lib", "cfr", "builtins", "libs"],
        barrelSpec: resolveBarrelSpecs(
            members: classes
                .map((x) => BarrelMember.fromSwidClass(swidClass: x))
                .toList()),
      ),
      (x) => writeTranslationUnit(translationUnit: x));
}
