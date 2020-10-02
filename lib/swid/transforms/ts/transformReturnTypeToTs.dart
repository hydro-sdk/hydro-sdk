import 'package:hydro_sdk/swid/ir/narrowSwidType.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
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
      });

  if (swidFunctionType.returnType.nullabilitySuffix ==
      SwidNullabilitySuffix.question) {
    res += " | undefined";
  }

  return res;
}
