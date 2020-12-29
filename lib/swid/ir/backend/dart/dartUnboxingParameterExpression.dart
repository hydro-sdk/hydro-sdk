import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, Expression, TypeReference;

import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';

class DartUnboxingParameterExpression {
  final SwidType swidType;
  final Expression expression;

  DartUnboxingParameterExpression({
    @required this.swidType,
    @required this.expression,
  });

  String toDartSource() => swidType.when(
        fromSwidInterface: (val) => narrowSwidInterfaceByReferenceDeclaration(
          swidInterface: val,
          onPrimitive: (val) => val.name == "double" || val.name == "double*"
              ? expression
                  .nullSafeProperty("toDouble")
                  .call([])
                  .accept(DartEmitter())
                  .toString()
              : expression.accept(DartEmitter()).toString(),
          onClass: (val) => refer("maybeUnBoxAndBuildArgument")
              .call([
                expression
              ], {
                "parentState": refer("hydroState")
              }, [
                TypeReference((t) => t..symbol = val.name),
              ])
              .accept(DartEmitter())
              .toString(),
          onEnum: (val) => refer("maybeUnBoxEnum")
              .call([], {
                "values": refer(val.name).property("values"),
                "boxedEnum": expression
              })
              .accept(DartEmitter())
              .toString(),
          onVoid: (_) => expression.accept(DartEmitter()).toString(),
        ),
        fromSwidClass: (_) => "",
        fromSwidDefaultFormalParameter: (_) => "",
        fromSwidFunctionType: (_) => "",
      );
}
