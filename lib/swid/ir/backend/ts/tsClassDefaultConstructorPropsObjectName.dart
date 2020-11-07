import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:meta/meta.dart';

class TsClassDefaultConstructorPropsObjectName {
  final SwidClass swidClass;

  TsClassDefaultConstructorPropsObjectName({@required this.swidClass});

  String toTsSource() =>
      "${transformToCamelCase(str: swidClass.name)}DefaultProps";
}
