import 'package:collection/collection.dart' show IterableExtension;

import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/backend/ts/tsLinebreak.dart';
import 'package:hydro_sdk/swid/backend/ts/tsResolvedImport.dart';
import 'package:hydro_sdk/swid/backend/ts/tsir.dart';
import 'package:hydro_sdk/swid/backend/ts/util/resolveDependencyInformation.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/collectAllReferences.dart';
import 'package:hydro_sdk/swid/ir/util/collectAllStaticConstReferences.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';

List<TsIr> tsImportBlock({
  required SwidClass swidClass,
  required List<String> prefixPaths,
}) {
  List<Tuple2<List<String>, String>> symbolModulePairs =
      resolveDependencyInformation(
          dependencies: collectAllReferences(
                  swidType: SwidType.fromSwidClass(swidClass: swidClass))!\
              .where((x) => narrowSwidInterfaceByReferenceDeclaration(
                    swidInterface: x,
                    onPrimitive: (_) => false,
                    onClass: (_) => true,
                    onEnum: (_) => true,
                    onVoid: (_) => false,
                    onTypeParameter: (_) => false,
                    onDynamic: (_) => false,

                  )!)
              .toList(),
          importer: SwidType.fromSwidClass(swidClass: swidClass),
          prefixPaths: prefixPaths);

  List<Tuple2<List<String>, String>> staticConstSymbolModulePairs =
      resolveDependencyInformation(
          rewriteReferences: false,
          dependencies: collectAllStaticConstReferences(
                  swidType: SwidType.fromSwidClass(swidClass: swidClass))!
              .where((x) => narrowSwidInterfaceByReferenceDeclaration(
                    swidInterface: x,
                    onPrimitive: (val) => val.name == "double",
                    onClass: (_) => true,
                    onEnum: (_) => true,
                    onVoid: (_) => false,
                    onTypeParameter: (_) => false,
                    onDynamic: (_) => false,
                  )!)
              .toList(),
          importer: SwidType.fromSwidClass(swidClass: swidClass),
          prefixPaths: prefixPaths);

  staticConstSymbolModulePairs.forEach((x) => symbolModulePairs
              .firstWhereOrNull((k) => k.item2 == x.item2) !=
          null
      ? symbolModulePairs
          .setAll(symbolModulePairs.indexWhere((k) => k.item2 == x.item2), [
          Tuple2<List<String>, String>(
              symbolModulePairs.firstWhere((k) => k.item2 == x.item2).item1
                ..addAll(x.item1),
              x.item2)
        ])
      : symbolModulePairs.add(Tuple2<List<String>, String>(x.item1, x.item2)));

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
