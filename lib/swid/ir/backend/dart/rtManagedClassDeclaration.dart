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
        Block,
        Code;
import 'package:dart_style/dart_style.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/transforms/dart/removeNullabilitySuffixFromTypeNames.dart';
import 'package:hydro_sdk/swid/transforms/methodInjectionFieldName.dart';
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
      ..optionalParameters.addAll(swidClass
              .constructorType.namedParameterTypes.entries
              .map((x) => MapEntry(x.key,
                  removeNullabilitySuffixFromTypeNames(swidType: x.value)))
              .toList()
              .map((x) => Parameter((k) => k
                ..name = x.key
                ..type = TypeReference((i) => i
                  ..symbol = x.value.when(
                      fromSwidInterface: (val) => val.name,
                      fromSwidClass: (val) => val.name,
                      fromSwidDefaultFormalParameter: (val) => val.name,
                      fromSwidFunctionType: (val) => val.name))
                ..named = true))
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
      ])
      ..initializers.addAll([
        Code("super(" +
            swidClass.constructorType.normalParameterNames
                .map((e) => e)
                .toList()
                .join(",") +
            (swidClass.constructorType.normalParameterNames.length >= 1
                ? ","
                : "") +
            swidClass.constructorType.namedParameterTypes.entries
                .map((e) => e.key + ": " + e.key)
                .toList()
                .join(",") +
            ")")
      ])
      ..body = Block.of([
        refer("table")
            .index(literalString("vmObject"))
            .assign(refer("vmObject"))
            .statement,
        refer("table")
            .index(literalString("unwrap"))
            .assign(refer("makeLuaDartFunc").call([], {
              "func": Method((x) => x
                ..requiredParameters.addAll([
                  Parameter((i) => i
                    ..name = "args"
                    ..type = TypeReference(((j) => j
                      ..symbol = "List"
                      ..types.add(refer("dynamic")))))
                ])
                ..body = Block.of([
                  literalList([refer("unwrap").call([])]).returned.statement,
                ])).closure
            }))
            .statement,
        ...(swidClass.methods
                .where((x) => x.name != "==")
                .map((x) => refer("table")
                    .index(literalString(
                        methodInjectionFieldName(swidFunctionType: x)))
                    .assign(refer("makeLuaDartFunc").call([], {
                      "func": Method((k) => k
                        ..requiredParameters.addAll([
                          Parameter((i) => i
                            ..name = "args"
                            ..type = TypeReference(((j) => j
                              ..symbol = "List"
                              ..types.add(refer("dynamic")))))
                        ])
                        ..body = Block.of([
                          Code("return [super.${x.name}()];"),
                        ])).closure
                    })))
                .toList())
      ])))
    ..methods.addAll(swidClass.methods
            .where((x) => x.name != "==")
            .map((x) => Method((k) => k
              ..annotations.add(refer("override"))
              ..name = x.name
              ..returns = refer(x.returnType.when(fromSwidInterface: (val) => val.name, fromSwidClass: (val) => val.name, fromSwidDefaultFormalParameter: (val) => val.name, fromSwidFunctionType: (val) => val.name))
              ..body = Block.of([
                Code("Closure closure = table[\"${x.name}\"];"),
                Code(
                    "return closure.dispatch([table],parentState: hydroState)[0];"),
              ])))
            ?.toList() ??
        [])).accept(DartEmitter()).toString());
}
