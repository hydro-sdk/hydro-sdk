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

import 'package:hydro_sdk/swid/ir/backend/dart/dartBindInstanceField.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/vmManagedClassMethodInjectionImplementation.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/transforms/transformAccessorName.dart';

class VMManagedClassDeclaration {
  final SwidClass swidClass;

  VMManagedClassDeclaration({@required this.swidClass});

  String toDartSource() => DartFormatter().format(Class((c) => c
    ..name = "VMManaged${swidClass.name}"
    ..extend = TypeReference((t) => t
      ..symbol = "VMManagedBox"
      ..types.addAll([
        TypeReference((t) => t
          ..symbol = swidClass.name +
              (swidClass.typeFormals.isNotEmpty
                  ? "<" +
                      swidClass.typeFormals.map((x) => "dynamic").join(",") +
                      ">"
                  : "")),
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
          ..type = TypeReference((i) => i..symbol = swidClass.name)
          ..name = "vmObject",
      ),
    ])
    ..constructors.add(Constructor((c) => c
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
      ..body = Block.of([
        ...(swidClass.instanceFieldDeclarations.entries
            .map((x) => Code(DartBindInstanceField(
                  tableKey: x.key,
                  instanceFieldName: "vmObject.${x.key}",
                  instanceField: x.value,
                ).toDartSource()))
            .toList()),
        ...(swidClass.methods
            .where((x) => x.name != "==")
            .where((x) => !x.swidDeclarationModifiers.hasProtected)
            .map((x) => Code(
                  VMManagedClassMethodInjectionImplementation(
                      tableKey: transformAccessorName(swidFunctionType: x).name,
                      swidFunctionType: SwidFunctionType.clone(
                        swidFunctionType: x,
                        name: "vmObject.${x.name}",
                      )).toDartSource(),
                ))
            .toList())
      ])))).accept(DartEmitter()).toString());
}
