import 'package:code_builder/code_builder.dart'
    show
        DartEmitter,
        Parameter,
        refer,
        literalString,
        literalList,
        Method,
        Code,
        Block;
import 'package:dart_style/dart_style.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxingProcedure.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/luaDartBinding.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:meta/meta.dart';

class LoadNamespaceSymbolDeclaration {
  final SwidClass swidClass;

  LoadNamespaceSymbolDeclaration({@required this.swidClass});

  String toDartSource() => DartFormatter().format(Method((m) => m
    ..name = "load${swidClass.name}"
    ..returns = refer("void")
    ..optionalParameters.addAll([
      Parameter((p) => p
        ..annotations.add(refer("required"))
        ..named = true
        ..name = "hydroState"
        ..type = refer("HydroState")),
      Parameter((p) => p
        ..annotations.add(refer("required"))
        ..named = true
        ..name = "table"
        ..type = refer("HydroTable")),
    ])
    ..body = Block.of([
      refer("table")
          .index(literalString(transformToCamelCase(str: swidClass.name)))
          .assign(luaDartBinding(
              code: Block.of([
            literalList([
              Code(DartFunctionSelfBindingInvocation(
                      dartBoxingProcedure: DartBoxingProcedure.unbox,
                      emitTableBindingPrefix: true,
                      swidFunctionType: SwidFunctionType.clone(
                          swidFunctionType: swidClass.constructorType,
                          name: "RTManaged${swidClass.name}"))
                  .toDartSource())
            ]).returned.statement
          ])))
          .statement
    ])).accept(DartEmitter()).toString());
}
