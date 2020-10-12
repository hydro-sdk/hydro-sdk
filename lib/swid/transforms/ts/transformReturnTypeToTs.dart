import 'package:hydro_sdk/swid/ir/dart/narrowSwidType.dart';
import 'package:hydro_sdk/swid/ir/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/dart/swidNullabilitySuffix.dart';
import 'package:meta/meta.dart';

String transformReturnTypeToTs({@required SwidFunctionType swidFunctionType}) {
  var res = " => ";

  narrowSwidType(
    swidType: swidFunctionType.returnType,
    onSwidFunctionType: (val) {
      res += transformReturnTypeToTs(
          swidFunctionType: swidFunctionType.returnType);

      return null;
    },
    onSwidType: (val) {
      res += swidFunctionType.returnType.name;

      return null;
    },
    onSwidDefaultFormalParameter: (_) => null,
  );

  if (swidFunctionType.returnType.nullabilitySuffix ==
      SwidNullabilitySuffix.question) {
    res += " | undefined";
  }

  return res;
}
