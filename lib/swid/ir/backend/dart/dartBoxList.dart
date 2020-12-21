import 'package:code_builder/code_builder.dart'
    show DartEmitter, Expression, refer, Method, Parameter, Block, Code;
import 'package:hydro_sdk/swid/ir/backend/dart/codeKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:meta/meta.dart';

class DartBoxList {
  final SwidInterface type;
  final String referenceName;
  final CodeKind codeKind;

  DartBoxList({
    @required this.type,
    @required this.referenceName,
    this.codeKind = CodeKind.statement,
  });

  String toDartSource() =>
      ((Expression expression) => codeKind == CodeKind.statement
          ? expression.statement
          : codeKind == CodeKind.expression
              ? expression.expression
              : null)(refer(referenceName).property("map").call(
          [Method().closure.expression], {})).accept(DartEmitter()).toString();
}
