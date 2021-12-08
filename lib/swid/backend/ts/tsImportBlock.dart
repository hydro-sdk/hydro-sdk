import 'package:collection/collection.dart' show IterableExtension;
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/backend/ts/tsLinebreak.dart';
import 'package:hydro_sdk/swid/backend/ts/tsResolvedImport.dart';
import 'package:hydro_sdk/swid/backend/ts/tsir.dart';
import 'package:hydro_sdk/swid/backend/ts/util/resolveDependencyInformation.dart';
import 'package:hydro_sdk/swid/ir/analyses/collectAllReferences.dart';
import 'package:hydro_sdk/swid/ir/analyses/collectAllStaticConstReferences.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/hasStaticConstMap.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';

List<TsIr> tsImportBlock({
  required final SwidClass swidClass,
  required final List<String> prefixPaths,
  required final ISwarsPipeline pipeline,
}) {
  List<Tuple2<List<String>, String>> symbolModulePairs =
      resolveDependencyInformation(
    pipeline: pipeline,
    dependencies: [
      ...pipeline.reduceFromTerm(
        CollectAllReferences(
          includeFirstOrderSuperClassReferences: true,
          swidType: SwidType.fromSwidClass(
            swidClass: swidClass,
          ),
        ),
      ),
      ...(hasStaticConstMap(
        swidType: SwidType.fromSwidClass(
          swidClass: swidClass,
        ),
      )
          ? [
              SwidInterface(
                name: "Iterable",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
              SwidInterface(
                name: "MapEntry",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              )
            ]
          : <SwidInterface>[])
    ]
        .where((x) => narrowSwidInterfaceByReferenceDeclaration(
              swidInterface: x,
              onPrimitive: (_) => false,
              onClass: (_) => true,
              onEnum: (_) => true,
              onVoid: (_) => false,
              onTypeParameter: (_) => false,
              onDynamic: (_) => false,
              onUnknown: (_) => false,
            ))
        .toList(),
    importer: SwidType.fromSwidClass(swidClass: swidClass),
    prefixPaths: prefixPaths,
  );

  List<Tuple2<List<String>, String>> staticConstSymbolModulePairs =
      resolveDependencyInformation(
          pipeline: pipeline,
          rewriteReferences: false,
          dependencies: pipeline
              .reduceFromTerm(
                CollectAllStaticConstReferences(
                  swidType: SwidType.fromSwidClass(
                    swidClass: swidClass,
                  ),
                ),
              )
              .where((x) => narrowSwidInterfaceByReferenceDeclaration(
                    swidInterface: x,
                    onPrimitive: (val) => val.name == "double",
                    onClass: (_) => true,
                    onEnum: (_) => true,
                    onVoid: (_) => false,
                    onTypeParameter: (_) => false,
                    onDynamic: (_) => false,
                    onUnknown: (_) => false,
                  ))
              .toList(),
          importer: SwidType.fromSwidClass(swidClass: swidClass),
          prefixPaths: prefixPaths);

  staticConstSymbolModulePairs.forEach((x) =>
      symbolModulePairs.firstWhereOrNull((k) => k.item2 == x.item2) != null
          ? symbolModulePairs
              .setAll(symbolModulePairs.indexWhere((k) => k.item2 == x.item2), [
              Tuple2<List<String>, String>(
                  symbolModulePairs.firstWhere((k) => k.item2 == x.item2).item1
                    ..addAll(x.item1),
                  x.item2)
            ])
          : symbolModulePairs
              .add(Tuple2<List<String>, String>(x.item1, x.item2)));

  symbolModulePairs = symbolModulePairs
      .map((x) => Tuple2(
            x.item1.fold<List<String>>(
              <String>[],
              (prev, element) =>
                  prev.firstWhereOrNull((k) => k == element) == null
                      ? [
                          ...prev,
                          element,
                        ]
                      : prev,
            ),
            x.item2,
          ))
      .toList();

  var res = symbolModulePairs
      .map((x) => [
            TsIr.fromTsResolvedImport(
                tsResolvedImport: TsResolvedImport(
              path: x.item2,
              symbols: x.item1,
            )),
            TsIr.fromTsLinebreak(tsLinebreak: TsLinebreak())
          ])
      .toList();
  return res.isNotEmpty
      ? res.reduce((value, element) => [...value, ...element])
      : [];
}
