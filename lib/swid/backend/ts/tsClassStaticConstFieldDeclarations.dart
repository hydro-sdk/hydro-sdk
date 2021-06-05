import 'package:collection/collection.dart' show IterableExtension;


import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstFieldDeclaration.dart';

class TsClassStaticConstFieldDeclarations {
  final SwidClass swidClass;

  TsClassStaticConstFieldDeclarations({required this.swidClass});

  String toTsSource() {
    var res = "";
    swidClass.staticConstFieldDeclarations?.forEach((x) {
      res += "    " +
          transformStaticConstFieldDeclaration(
              staticConstFieldDeclaration: x,
              parentClass: swidClass,
              scopeResolver: (staticConstFieldReference) =>
                  ((SwidStaticConstFieldDeclaration?
                          swidStaticConstFieldDeclaration) =>
                      swidStaticConstFieldDeclaration != null
                          ? "${swidClass.name}.${swidStaticConstFieldDeclaration.name}"
                          : staticConstFieldReference.name)(swidClass
                      .staticConstFieldDeclarations
                      .firstWhereOrNull(
                          (k) => k.name == staticConstFieldReference.name)));
      res += "\n";
    });
    return res;
  }
}
