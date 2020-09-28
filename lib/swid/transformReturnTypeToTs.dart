import 'package:hydro_sdk/swid/narrowSwidType.dart';
import 'package:hydro_sdk/swid/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swidNullabilitySuffix.dart';
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
