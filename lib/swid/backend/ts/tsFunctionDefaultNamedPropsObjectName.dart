import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';

class TsFunctionDefaultNamedPropsObjectName {
  final SwidFunctionType? swidFunctionType;

  TsFunctionDefaultNamedPropsObjectName({required this.swidFunctionType});

  String toTsSource() =>
      "${transformToCamelCase(str: swidFunctionType!.name)}DefaultProps";
}
