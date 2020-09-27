import 'package:hydro_sdk/swid/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/swidType.dart';
import 'package:hydro_sdk/swid/transformReturnTypeToTs.dart';
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

  normalTypes.forEach((key, value) {
    if (value is SwidFunctionType) {
      res += "$key : ";
      res += transformFunctionTypeToTs(swidFunctionType: value);
    } else if (value is SwidType) {
      res += "$key : ${value.name}";
      if (value.nullabilitySuffix == SwidNullabilitySuffix.question) {
        res += " | undefined";
      }
    }
    if (normalTypes.keys.toList().indexOf(key) !=
        normalTypes.keys.toList().length - 1) {
      res += ",";
    }
  });
  res += ")";
  if (emitReturnType) {
    res += transformReturnTypeToTs(swidFunctionType: swidFunctionType);
  }
  return res;
}
