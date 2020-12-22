import 'package:code_builder/code_builder.dart'
    show DartEmitter, Expression, refer, Method, Parameter, Block, Code;

import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/backend/dart/codeKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';

class DartBoxEnumReference {
  final SwidType type;
  final String referenceName;
  final CodeKind codeKind;

  DartBoxEnumReference({
    @required this.type,
    @required this.referenceName,
    this.codeKind = CodeKind.statement,
  });

  String toDartSource() =>
      ((Expression expression) => codeKind == CodeKind.statement
              ? expression.statement
              : codeKind == CodeKind.expression
                  ? expression.expression
                  : null)(
          refer(type.name).property("values").property("indexWhere").call(
        [
          Method((k) => k
            ..requiredParameters.addAll([
              Parameter((p) => p..name = "x"),
            ])
            ..body = Block.of([Code("return x == $referenceName;")])).closure
        ],
        {},
      )).accept(DartEmitter()).toString();
}
