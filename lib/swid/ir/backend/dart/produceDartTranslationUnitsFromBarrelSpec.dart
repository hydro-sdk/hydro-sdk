import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

import 'package:hydro_sdk/swid/ir/backend/dart/dartImportStatement.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartLinebreak.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartTranslationUnit.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartir.dart';
import 'package:hydro_sdk/swid/ir/backend/util/barrelSpec.dart';

List<DartTranslationUnit> produceDartTranslationUnitsFromBarrelSpec({
  @required String packageName,
  @required List<String> prefixPaths,
  @required BarrelSpec barrelSpec,
}) =>
    [
      DartTranslationUnit(
          path: prefixPaths.join(p.separator),
          fileName: barrelSpec.path + ".dart",
          ir: [
            DartIr.fromDartImportStatement(
                dartImportStatement:
                    DartImportStatement(path: "package:meta/meta.dart")),
            DartIr.fromDartLinebreak(dartLinebreak: DartLinebreak()),
            DartIr.fromDartImportStatement(
                dartImportStatement: DartImportStatement(
                    path: "package:hydro_sdk/cfr/vm/table.dart")),
            DartIr.fromDartLinebreak(dartLinebreak: DartLinebreak()),
            DartIr.fromDartImportStatement(
                dartImportStatement: DartImportStatement(
                    path: "package:hydro_sdk/hydroState.dart")),
            DartIr.fromDartLinebreak(dartLinebreak: DartLinebreak()),
          ]),
      ...((List<List<DartTranslationUnit>> translationUnits) => translationUnits
              .isNotEmpty
          ? translationUnits.reduce((value, element) => [...value, ...element])
          : [])(
        barrelSpec.members
            .where((x) =>
                x.maybeWhen(fromBarrelSpec: (val) => val, orElse: () => null) !=
                null)
            .cast<BarrelSpec>()
            .map(
              (x) => produceDartTranslationUnitsFromBarrelSpec(
                packageName: packageName,
                prefixPaths: prefixPaths,
                barrelSpec: x,
              ),
            ),
      )
    ];
