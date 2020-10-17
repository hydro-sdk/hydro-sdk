import 'package:hydro_sdk/swid/ir/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/dart/swidNullabilitySuffix.dart';
import 'package:meta/meta.dart';

String transformReturnTypeToTs({@required SwidFunctionType swidFunctionType}) {
  var res = " => ";

  swidFunctionType.returnType.when(
    fromSwidFunctionType: (val) {
      res += transformReturnTypeToTs(swidFunctionType: val);

      return null;
    },
    fromSwidInterface: (val) {
      res += val.name;

      return null;
    },
    fromSwidDefaultFormalParameter: (_) => null,
    fromSwidClass: (_) => null,
  );

  if (swidFunctionType.returnType.nullabilitySuffix ==
      SwidNullabilitySuffix.question) {
    res += " | undefined";
  }

  return res;
}
