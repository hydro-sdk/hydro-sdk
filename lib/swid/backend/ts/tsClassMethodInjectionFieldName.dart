import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/transforms/methodInjectionFieldName.dart';

class TsClassMethodInjectionFieldName {
  final SwidFunctionType? swidFunctionType;

  TsClassMethodInjectionFieldName({required this.swidFunctionType});

  String toTsSource() =>
      methodInjectionFieldName(swidFunctionType: swidFunctionType!);
}
