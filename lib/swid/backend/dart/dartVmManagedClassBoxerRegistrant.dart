import 'package:code_builder/code_builder.dart'
    show refer, Block, Method, Parameter, TypeReference, DartEmitter;



import 'package:hydro_sdk/swid/ir/swidClass.dart';

class DartVMManagedClassBoxerRegistrant {
  final SwidClass swidClass;

  DartVMManagedClassBoxerRegistrant({required this.swidClass});

  String toDartSource() => refer("registerBoxer")
      .call([], {
        "boxer": Method((m) => m
          ..optionalParameters.addAll([
            Parameter((p) => p
              ..named = true
              ..annotations.add(refer("required"))
              ..name = "vmObject"
              ..type = TypeReference((t) => t..symbol = swidClass.name)),
            Parameter((p) => p
              ..named = true
              ..annotations.add(refer("required"))
              ..name = "hydroState"
              ..type = TypeReference((t) => t..symbol = "HydroState")),
            Parameter((p) => p
              ..named = true
              ..annotations.add(refer("required"))
              ..name = "table"
              ..type = TypeReference((t) => t..symbol = "HydroTable")),
          ])
          ..body = Block.of([
            refer("VMManaged${swidClass.name}")
                .call([], {
                  "vmObject": refer("vmObject"),
                  "hydroState": refer("hydroState"),
                  "table": refer("table"),
                })
                .returned
                .statement
          ])).closure
      }, [
        TypeReference((t) => t..symbol = swidClass.name),
      ])
      .statement
      .accept(DartEmitter())
      .toString();
}
