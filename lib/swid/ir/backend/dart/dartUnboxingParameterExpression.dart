import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, Expression, TypeReference;
import 'package:hydro_sdk/swid/ir/frontend/dart/isPrimitive.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:meta/meta.dart';

class DartUnboxingParameterExpression {
  final SwidType swidType;
  final Expression expression;

  DartUnboxingParameterExpression({
    @required this.swidType,
    @required this.expression,
  });

  String toDartSource() => swidType.when(
        fromSwidInterface: (val) => val.referenceDeclarationKind ==
                    SwidReferenceDeclarationKind.classElement &&
                isPrimitive(swidType: swidType)
            ? expression.accept(DartEmitter()).toString()
            : val.referenceDeclarationKind ==
                        SwidReferenceDeclarationKind.classElement &&
                    !isPrimitive(swidType: swidType)
                ? refer("maybeUnBoxAndBuildArgument")
                    .call([expression], {"parentState": refer("hydroState")},
                        [TypeReference((t) => t..symbol = val.name)])
                    .accept(DartEmitter())
                    .toString()
                : val.referenceDeclarationKind ==
                        SwidReferenceDeclarationKind.enumElement
                    ? refer("maybeUnBoxEnum")
                        .call([], {
                          "values": refer(val.name).property("values"),
                          "boxedEnum": expression
                        })
                        .accept(DartEmitter())
                        .toString()
                    : "",
        fromSwidClass: (_) => "",
        fromSwidDefaultFormalParameter: (_) => "",
        fromSwidFunctionType: (_) => "",
      );
}
