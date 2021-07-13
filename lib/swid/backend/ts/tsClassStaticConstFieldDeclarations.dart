import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/transforms/ts/util/makeDefaultStaticConstFieldReferenceScopeResolver.dart';

class TsClassStaticConstFieldDeclarations {
  final SwidClass swidClass;

  const TsClassStaticConstFieldDeclarations({
    required this.swidClass,
  });

  String toTsSource() {
    var res = "";
    swidClass.staticConstFieldDeclarations.forEach((x) {
      res += "    " +
          transformStaticConstFieldDeclaration(
              staticConstFieldDeclaration: x,
              parentClass: swidClass,
              scopeResolver: makeDefaultStaticConstFieldReferenceScopeResolver(
                parentClass: swidClass,
              ));
      res += "\n";
    });
    return res;
  }
}
