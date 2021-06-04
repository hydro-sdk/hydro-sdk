import 'package:code_builder/code_builder.dart'
    show
        Class,
        Constructor,
        DartEmitter,
        Field,
        FieldModifier,
        Parameter,
        TypeReference,
        refer,
        Block,
        Code;

import 'package:dart_style/dart_style.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBindInstanceField.dart';
import 'package:hydro_sdk/swid/backend/dart/dartVmManagedClassMethodInjectionImplementation.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/util/isOperator.dart';
import 'package:hydro_sdk/swid/transforms/transformAccessorName.dart';

class DartVMManagedClassDeclaration {
  final SwidClass? swidClass;

  DartVMManagedClassDeclaration({required this.swidClass});

  String toDartSource() => DartFormatter().format(Class(
        (c) => c
          ..name = "VMManaged${swidClass!.name}"
          ..extend = TypeReference((t) => t
            ..symbol = "VMManagedBox"
            ..types.addAll([
              TypeReference((t) => t..symbol = swidClass!.displayName),
            ]))
          ..fields.addAll([
            Field(
              (k) => k
                ..modifier = FieldModifier.final$
                ..type = TypeReference((i) => i..symbol = "HydroTable")
                ..name = "table",
            ),
            Field(
              (k) => k
                ..modifier = FieldModifier.final$
                ..type = TypeReference((i) => i..symbol = "HydroState")
                ..name = "hydroState",
            ),
            Field(
              (k) => k
                ..modifier = FieldModifier.final$
                ..type = TypeReference((i) => i..symbol = swidClass!.name)
                ..name = "vmObject",
            ),
          ])
          ..constructors.add(
            Constructor(
              (c) => c
                ..optionalParameters.addAll([
                  Parameter((p) => p
                    ..annotations.add(refer("required"))
                    ..toThis = true
                    ..named = true
                    ..name = "table"),
                  Parameter((p) => p
                    ..annotations.add(refer("required"))
                    ..toThis = true
                    ..named = true
                    ..name = "vmObject"),
                  Parameter((p) => p
                    ..annotations.add(refer("required"))
                    ..toThis = true
                    ..named = true
                    ..name = "hydroState"),
                ])
                ..initializers.addAll([
                  Code("""super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        )""")
                ])
                ..body = Block.of(
                  [
                    ...(swidClass!.instanceFieldDeclarations.entries
                        .map((x) => Code(DartBindInstanceField(
                              tableKey: x.key,
                              instanceFieldName: "vmObject.${x.key}",
                              instanceField: x.value,
                            ).toDartSource()!))
                        .toList()),
                    ...(swidClass!.methods
                        .where((x) => !x!.swidDeclarationModifiers.hasProtected)
                        .where((x) => !isOperator(swidFunctionType: x!))
                        .map((x) => Code(
                              DartVMManagedClassMethodInjectionImplementation(
                                  tableKey:
                                      transformAccessorName(swidFunctionType: x!)
                                          .name,
                                  swidFunctionType: SwidFunctionType.clone(
                                    swidFunctionType: x,
                                    name: "vmObject.${x.name}",
                                  )).toDartSource(),
                            ))
                        .toList())
                  ],
                ),
            ),
          ),
      ).accept(DartEmitter()).toString());
}
