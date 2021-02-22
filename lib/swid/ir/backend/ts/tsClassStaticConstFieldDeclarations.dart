import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstFieldDeclaration.dart';

class TsClassStaticConstFieldDeclarations {
  final SwidClass swidClass;

  TsClassStaticConstFieldDeclarations({@required this.swidClass});

  String toTsSource() {
    var res = "";
    swidClass.staticConstFieldDeclarations?.forEach((x) {
      res += "    " +
          transformStaticConstFieldDeclaration(
              staticConstFieldDeclaration: x,
              parentClass: swidClass,
              scopeResolver: (staticConstFieldReference) =>
                  ((SwidStaticConstFieldDeclaration
                          swidStaticConstFieldDeclaration) =>
                      swidStaticConstFieldDeclaration != null
                          ? "${swidClass.name}.${swidStaticConstFieldDeclaration.name}"
                          : staticConstFieldReference.name)(swidClass
                      .staticConstFieldDeclarations
                      .firstWhere(
                          (k) => k.name == staticConstFieldReference.name,
                          orElse: () => null)));
      res += "\n";
    });
    return res;
  }
}
