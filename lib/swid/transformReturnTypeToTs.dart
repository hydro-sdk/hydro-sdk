import 'package:hydro_sdk/swid/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/swidType.dart';
import 'package:meta/meta.dart';

String transformReturnTypeToTs({@required SwidFunctionType swidFunctionType}) {
  var res = " => ";

  if (swidFunctionType.returnType is SwidType) {
    res += swidFunctionType.returnType.name;
  } else if (swidFunctionType.returnType is SwidFunctionType) {
    res +=
        transformReturnTypeToTs(swidFunctionType: swidFunctionType.returnType);
  }

  if (swidFunctionType.returnType.nullabilitySuffix ==
      SwidNullabilitySuffix.question) {
    res += " | undefined";
  }

  return res;
}
