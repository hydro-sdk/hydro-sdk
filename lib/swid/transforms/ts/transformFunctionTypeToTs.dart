import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/cloneSwidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformReturnTypeToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';

String transformFunctionTypeToTs({
  @required SwidFunctionType swidFunctionType,
  @required TrailingReturnTypeKind trailingReturnTypeKind,
  bool emitTrailingReturnType = true,
  bool emitDefaultFormalsAsOptionalNamed = false,
}) {
  var res = "(";

  Map<String, SwidType> normalTypes = {};
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

  var shouldEmitPositionalAsOptional = ({@required String argName}) =>
      normalTypes.entries
              .takeWhile((x) =>
                  x.value.nullabilitySuffix == SwidNullabilitySuffix.question)
              .toList()
              .length ==
          normalTypes.entries.length ||
      (normalTypes.entries
              .toList()
              .reversed
              .toList()
              .takeWhile((x) =>
                  x.value.nullabilitySuffix == SwidNullabilitySuffix.question)
              .toList()
              .firstWhere((x) => x.key == argName, orElse: () => null) !=
          null);

  normalTypes.forEach((key, value) {
    value.when(
      fromSwidClass: (_) => null,
      fromSwidFunctionType: (val) {
        res += "$key";
        if (shouldEmitPositionalAsOptional(argName: key)) {
          res +=
              "${val.nullabilitySuffix == SwidNullabilitySuffix.question ? "?" : ""}";
        }

        res += " : ";
        res += transformFunctionTypeToTs(
            swidFunctionType: val,
            trailingReturnTypeKind: trailingReturnTypeKind);

        return null;
      },
      fromSwidInterface: (val) {
        res += key;
        if (shouldEmitPositionalAsOptional(argName: key)) {
          res +=
              "${val.nullabilitySuffix == SwidNullabilitySuffix.question ? "?" : ""}";
        }

        res += ": ${val.name}";

        if (val.nullabilitySuffix == SwidNullabilitySuffix.question) {
          res += " | undefined";
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
      res +=
          "${x.key}${x.value.nullabilitySuffix == SwidNullabilitySuffix.question || (emitDefaultFormalsAsOptionalNamed && swidFunctionType.namedDefaults[x.key] != null) ? "?" : ""} : ${transformTypeDeclarationToTs(swidType: x.value)}, ";
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
