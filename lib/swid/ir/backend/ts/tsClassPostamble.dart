import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:meta/meta.dart';

class TsClassPostamble {
  final SwidClass swidClass;

  TsClassPostamble({@required this.swidClass});

  String toTsSource() => "}\n";
}
