import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';

class TsClassPostamble {
  final SwidClass swidClass;

  TsClassPostamble({required this.swidClass});

  String toTsSource() => "}\n";
}
