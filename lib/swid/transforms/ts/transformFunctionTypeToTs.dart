import 'package:hydro_sdk/swid/ir/dart/cloneSwidType.dart';
import 'package:hydro_sdk/swid/ir/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/dart/swidType.dart';
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
    value.when(
      fromSwidClass: (_)=>null,
      fromSwidFunctionType: (val) {
        res +=
            "$key${val.nullabilitySuffix == SwidNullabilitySuffix.question ? "?" : ""} : ";
        res += transformFunctionTypeToTs(swidFunctionType: val);

        return null;
      },
      fromSwidInterface: (val) {
        res +=
            "$key${val.nullabilitySuffix == SwidNullabilitySuffix.question ? "?" : ""} : ${val.name}";

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
  res += ")";
  if (emitReturnType) {
    res += transformReturnTypeToTs(swidFunctionType: swidFunctionType);
  }
  return res;
}
