import 'package:code_builder/code_builder.dart'
    show
        Class,
        Constructor,
        DartEmitter,
        Field,
        FieldModifier,
        Parameter,
        TypeReference,
        refer;
import 'package:dart_style/dart_style.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:meta/meta.dart';

class RTManagedClassDeclaration {
  final SwidClass swidClass;

  RTManagedClassDeclaration({@required this.swidClass});

  String toDartSource() => DartFormatter().format(Class((x) => x
    ..name = "RTManaged${swidClass.name}"
    ..extend = TypeReference((k) => k.symbol = swidClass.name)
    ..implements.add(TypeReference(
      (k) => k
        ..symbol = "Box"
        ..types.add(TypeReference((i) => i..symbol = swidClass.name)),
    ))
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
    ])
    ..constructors.add(Constructor((k) => k
      ..requiredParameters.addAll(swidClass.constructorType.normalParameterNames
              .map((e) => Parameter((i) => i
                ..name = e
                ..type = TypeReference((j) => j
                  ..symbol = swidClass.constructorType.normalParameterTypes
                      .elementAt(swidClass.constructorType.normalParameterNames
                          .indexOf(e))
                      .when(
                          fromSwidInterface: (val) => val.name,
                          fromSwidClass: (val) => val.name,
                          fromSwidDefaultFormalParameter: (val) => val.name,
                          fromSwidFunctionType: (val) => val.name))))
              ?.toList() ??
          [])
      ..optionalParameters.addAll([
        Parameter((i) => i
          ..annotations.add(refer("required"))
          ..toThis = true
          ..named = true
          ..name = "table"),
        Parameter((i) => i
          ..annotations.add(refer("required"))
          ..toThis = true
          ..named = true
          ..name = "hydroState")
      ])))).accept(DartEmitter()).toString());
}
