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
        literalString,
        literalList,
        Method,
        MethodType,
        Block,
        Code;
import 'package:dart_style/dart_style.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBindInstanceField.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/methodInjectionImplementation.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/swidTypeToDartTypeReference.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/transforms/dart/removeNullabilitySuffixFromTypeNames.dart';
import 'package:hydro_sdk/swid/transforms/tstl/transformTstlMethodNames.dart';
import 'package:meta/meta.dart';

class VMManagedClassDeclaration {
  final SwidClass swidClass;

  VMManagedClassDeclaration({@required this.swidClass});

  String toDartSource() => DartFormatter().format(Class((c) => c
    ..name = "VMManaged${swidClass.name}"
    ..extend = TypeReference((t) => t
      ..symbol = "VMManagedBox"
      ..types.addAll([
        TypeReference((t) => t..symbol = swidClass.name),
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
                    instanceFieldName: x.key, instanceField: x.value)
                .toDartSource()))
            .toList()),
      ])))).accept(DartEmitter()).toString());
}
