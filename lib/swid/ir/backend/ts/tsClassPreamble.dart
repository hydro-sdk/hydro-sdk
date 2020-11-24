import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:meta/meta.dart';

class TsClassPreamble {
  final SwidClass swidClass;

  TsClassPreamble({@required this.swidClass});

  String toTsSource() => "export class ${swidClass.name} {\n";
}
