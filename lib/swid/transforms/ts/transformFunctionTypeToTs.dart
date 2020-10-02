import 'package:hydro_sdk/swid/ir/cloneSwidType.dart';
import 'package:hydro_sdk/swid/ir/narrowSwidType.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformReturnTypeToTs.dart';
import 'package:meta/meta.dart';

String transformFunctionTypeToTs({
  @required SwidFunctionType swidFunctionType,
  bool emitReturnType = true,
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

  normalTypes.forEach((key, value) {
    narrowSwidType(
        swidType: value,
        onSwidFunctionType: (val) {
          res +=
              "$key${value.nullabilitySuffix == SwidNullabilitySuffix.question ? "?" : ""} : ";
          res += transformFunctionTypeToTs(swidFunctionType: value);

          return null;
        },
        onSwidType: (val) {
          res +=
              "$key${value.nullabilitySuffix == SwidNullabilitySuffix.question ? "?" : ""} : ${value.name}";

          if (value.nullabilitySuffix == SwidNullabilitySuffix.question) {
            res += " | undefined";
          }

          return null;
        });

    if (normalTypes.keys.toList().indexOf(key) !=
        normalTypes.keys.toList().length - 1) {
      res += ", ";
    }
  });
  res += ")";
  if (emitReturnType) {
    res += transformReturnTypeToTs(swidFunctionType: swidFunctionType);
  }
  return res;
}
