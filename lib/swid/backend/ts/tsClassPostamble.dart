import 'package:hydro_sdk/swid/ir/swidClass.dart';

class TsClassPostamble {
  final SwidClass swidClass;

  TsClassPostamble({required final this.swidClass});

  String toTsSource() => "}\n";
}
