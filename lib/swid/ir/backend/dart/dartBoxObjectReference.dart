import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, Reference, Expression;
import 'package:dart_style/dart_style.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:meta/meta.dart';

class DartBoxObjectReference {
  final SwidType type;
  final Expression objectReference;

  DartBoxObjectReference({@required this.type, @required this.objectReference});

  String toDartSource() =>
      DartFormatter().formatStatement(refer("maybeBoxObject")
          .call([], {
            "object": objectReference,
            "hydroState": refer("hydroState"),
            "table": refer("HydroTable").call([]),
          }, [
            Reference(type.name)
          ])
          .statement
          .accept(DartEmitter())
          .toString());
}
