import 'package:collection/collection.dart' show IterableExtension;

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/cloneSwidType.dart';
import 'package:hydro_sdk/swid/ir/util/isInexpressibleStaticConst.dart';
import 'package:hydro_sdk/swid/transforms/ts/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformReturnTypeToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeFormalsToTs.dart';

String transformFunctionTypeToTs({
  required SwidFunctionType swidFunctionType,
  required SwidClass? parentClass,
  required TrailingReturnTypeKind trailingReturnTypeKind,
  TrailingReturnTypeKind nestedTrailingReturnTypeKind =
      TrailingReturnTypeKind.fatArrow,
  bool emitTrailingReturnType = true,
  bool emitDefaultFormalsAsOptionalNamed = false,
  bool emitInitializersForOptionalPositionals = false,
}) {
  var res =
      transformTypeFormalsToTs(swidTypeFormals: swidFunctionType.typeFormals) +
          "(";

  Map<String, SwidType?> normalTypes = {};
  for (var i = 0; i != swidFunctionType.normalParameterNames.length; ++i) {
    normalTypes[swidFunctionType.normalParameterNames[i]] =
        swidFunctionType.normalParameterTypes[i];
  }

  //Pretend that Dart optional params are just like regular positionals except also nullable
  for (var i = 0; i != swidFunctionType.optionalParameterNames.length; ++i) {
    normalTypes.addEntries([
      MapEntry(swidFunctionType.optionalParameterNames[i],
          cloneSwidType(swidType: swidFunctionType.optionalParameterTypes[i]))
    ]);
  }

  var shouldEmitPositionalAsOptional = ({required String argName}) =>
      normalTypes.entries
              .takeWhile((x) =>
                  x.value!.nullabilitySuffix == SwidNullabilitySuffix.question)
              .toList()
              .length ==
          normalTypes.entries.length ||
      (normalTypes.entries
              .toList()
              .reversed
              .toList()
              .takeWhile((x) =>
                  x.value!.nullabilitySuffix == SwidNullabilitySuffix.question)
              .toList()
              .firstWhereOrNull((x) => x.key == argName) !=
          null);

  int normalAnonymousTypesSeen = 0;
  normalTypes.forEach((key, value) {
    value!.when(
      fromSwidClass: (_) => null,
      fromSwidFunctionType: (val) {
        if (key.trim().isNotEmpty) {
          res += "$key";
        } else {
          normalAnonymousTypesSeen++;
          res += "_";
          res +=
              List.generate(normalAnonymousTypesSeen, (index) => "_").join("");
        }
        if (shouldEmitPositionalAsOptional(argName: key)) {
          res +=
              "${val.nullabilitySuffix == SwidNullabilitySuffix.question ? "?" : ""}";
        }

        res += " : ";
        res += transformFunctionTypeToTs(
          parentClass: parentClass,
          swidFunctionType: val,
          trailingReturnTypeKind: nestedTrailingReturnTypeKind,
          nestedTrailingReturnTypeKind: nestedTrailingReturnTypeKind,
        );

        return null;
      },
      fromSwidInterface: (val) {
        if (key.trim().isNotEmpty) {
          res += "$key";
        } else {
          normalAnonymousTypesSeen++;
          res += "_";
          res +=
              List.generate(normalAnonymousTypesSeen, (index) => "_").join("");
        }
        if (shouldEmitPositionalAsOptional(argName: key)) {
          res +=
              "${val.nullabilitySuffix == SwidNullabilitySuffix.question ? "?" : ""}";
        }

        res += ": " +
            transformTypeDeclarationToTs(
              parentClass: parentClass,
              swidType: SwidType.fromSwidInterface(
                swidInterface: val,
              ),
              emitDefaultFormalsAsOptionalNamed:
                  emitDefaultFormalsAsOptionalNamed,
              emitTopLevelInitializersForOptionalPositionals:
                  emitInitializersForOptionalPositionals,
              emitTrailingReturnType: emitTrailingReturnType,
              nestedTrailingReturnTypeKind: nestedTrailingReturnTypeKind,
            );

        if (emitInitializersForOptionalPositionals) {
          var initializer = swidFunctionType.positionalDefaultParameters.entries
              .firstWhereOrNull((x) => x.key == key);
          if (initializer != null) {
            res += " = ${initializer.value.defaultValueCode}";
          }
        }

        return null;
      },
      fromSwidDefaultFormalParameter: (_) => null,
    );

    if (normalTypes.keys.toList().indexOf(key) !=
        normalTypes.keys.toList().length - 1) {
      res += ", ";
    }
  });

  if (swidFunctionType.normalParameterNames.isNotEmpty &&
      swidFunctionType.namedParameterTypes.isNotEmpty) {
    res += ",";
  }

  if (swidFunctionType.namedParameterTypes.isNotEmpty) {
    res += " props : { ";

    swidFunctionType.namedParameterTypes.entries.forEach((x) {
      res += [
        " ",
        x.key,
        x.value.nullabilitySuffix == SwidNullabilitySuffix.question ||
                (emitDefaultFormalsAsOptionalNamed &&
                    swidFunctionType.namedDefaults[x.key] != null &&
                    !isInexpressibleStaticConst(
                      parentClass: parentClass,
                      staticConst: swidFunctionType.namedDefaults[x.key]!.value,
                    ))
            ? "?"
            : "",
        " : ",
        transformTypeDeclarationToTs(
            parentClass: parentClass, swidType: x.value),
        ",",
      ].join("");
    });
    res += "}";
  }

  res += ")";
  if (emitTrailingReturnType) {
    res += transformReturnTypeToTs(
      swidFunctionType: swidFunctionType,
      trailingReturnTypeKind: trailingReturnTypeKind,
    );
  }
  return res;
}
