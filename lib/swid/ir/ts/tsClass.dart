import 'package:hydro_sdk/swid/ir/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/ts/TsIr.dart';
import 'package:hydro_sdk/swid/ir/ts/tsInterface.dart';
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
      res +=
          transformStaticConstFieldDeclaration(staticConstFieldDeclaration: x);
      res += "\n";
    });
    res += "}\n";

    return res;
  }
}
