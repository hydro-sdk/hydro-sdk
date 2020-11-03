import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/transforms/methodInjectionFieldName.dart';
import 'package:meta/meta.dart';

class TsClassMethodInjectionFieldName {
  final SwidFunctionType swidFunctionType;

  TsClassMethodInjectionFieldName({@required this.swidFunctionType});

  String toTsSource() =>
      methodInjectionFieldName(swidFunctionType: swidFunctionType);
}
