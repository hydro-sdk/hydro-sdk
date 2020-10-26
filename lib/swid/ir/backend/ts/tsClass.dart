import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/TsIr.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsInterface.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstFieldDeclaration.dart';
import 'package:meta/meta.dart';

class TsClass implements TsIr {
  final SwidClass swidClass;

  TsClass({@required this.swidClass});

  String toTsSource() {
    var res = TsInterface.fromSwidClass(swidClass: swidClass).toTsSource();

    res += "\n";
    res += "export class ${swidClass.name} {\n";
    swidClass.staticConstFieldDeclarations?.forEach((x) {
      res += transformStaticConstFieldDeclaration(
          staticConstFieldDeclaration: x,
          scopeResolver: (staticConstFieldReference) =>
              "${swidClass.name}." +
              swidClass.staticConstFieldDeclarations
                  .firstWhere((k) => k.name == staticConstFieldReference.name,
                      orElse: () => null)
                  .name);
      res += "\n";
    });
    res += "}\n";

    return res;
  }
}
