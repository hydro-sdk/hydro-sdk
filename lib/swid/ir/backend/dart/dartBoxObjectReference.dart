import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, Reference, Expression;
import 'package:hydro_sdk/swid/ir/backend/dart/codeKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:meta/meta.dart';

class DartBoxObjectReference {
  final SwidType type;
  final Expression objectReference;
  final CodeKind codeKind;

  DartBoxObjectReference({
    @required this.type,
    @required this.objectReference,
    this.codeKind = CodeKind.statement,
  });

  String toDartSource() =>
      ((Expression expression) => codeKind == CodeKind.statement
          ? expression.statement
          : codeKind == CodeKind.expression
              ? expression.expression
              : null)(refer("maybeBoxObject").call([], {
        "object": objectReference,
        "hydroState": refer("hydroState"),
        "table": refer("HydroTable").call([]),
      }, [
        Reference(type.name)
      ])).accept(DartEmitter()).toString();
}
