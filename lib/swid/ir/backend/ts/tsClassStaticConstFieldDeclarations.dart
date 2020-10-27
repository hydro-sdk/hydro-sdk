import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstFieldDeclaration.dart';
import 'package:meta/meta.dart';

class TsClassStaticConstFieldDeclarations {
  final SwidClass swidClass;

  TsClassStaticConstFieldDeclarations({@required this.swidClass});

  String toTsSource() {
    var res = "";
    swidClass.staticConstFieldDeclarations?.forEach((x) {
      res += "    " +
          transformStaticConstFieldDeclaration(
              staticConstFieldDeclaration: x,
              scopeResolver: (staticConstFieldReference) =>
                  "${swidClass.name}." +
                  swidClass.staticConstFieldDeclarations
                      .firstWhere(
                          (k) => k.name == staticConstFieldReference.name,
                          orElse: () => null)
                      .name);
      res += "\n";
    });
    return res;
  }
}
