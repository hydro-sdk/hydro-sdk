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
        Code,
        CodeExpression,
        Reference;

import 'package:dart_style/dart_style.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/backend/dart/dartBindInstanceField.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartUnboxingExpression.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/methodInjectionImplementation.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/swidTypeToDartTypeReference.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/castAllTypeParametersInFunctionToDynamic.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/castTypeParametersToDynamic.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/dart/removeNullabilitySuffixFromTypeNames.dart';
import 'package:hydro_sdk/swid/transforms/transformAccessorName.dart';
import 'package:hydro_sdk/swid/transforms/tstl/transformTstlMethodNames.dart';

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
        ...(swidClass.instanceFieldDeclarations.entries
            .map((x) => Code(DartBindInstanceField(
                  tableKey: x.key,
                  instanceFieldName: x.key,
                  instanceField: x.value,
                ).toDartSource()))
            .toList()),
        ...(swidClass.methods
            .where((x) => x.name != "==")
            .map((x) => Code(MethodInjectionImplementation(
                    swidFunctionType: castAllTypeParametersInFunctionToDynamic(
                  swidFunctionType: x,
                  preserveTypeParametersInLists: true,
                )).toDartSource()))
            .toList())
      ])))
    ..methods.addAll([
      Method((k) => k
        ..name = "unwrap"
        ..returns = refer(swidClass.name)
        ..body = refer("this").code),
      Method((k) => k
        ..name = "vmObject"
        ..type = MethodType.getter
        ..returns = refer(swidClass.name)
        ..body = refer("this").code)
    ])
    ..methods.addAll(swidClass.methods
            .where((x) => x.name != "==")
            .where((x) => !x.swidDeclarationModifiers.hasProtected)
            .map((x) => transformAccessorName(
                  swidFunctionType: x,
                  removeSuffixes: true,
                  addPrefixes: false,
                ))
            .map((x) => Method((k) => k
              ..annotations.add(refer("override"))
              ..type = x.swidDeclarationModifiers.isGetter
                  ? MethodType.getter
                  : x.swidDeclarationModifiers.isSetter
                      ? MethodType.setter
                      : null
              ..types.addAll(
                x.typeFormals.map((e) => Reference(e.name)).toList(),
              )
              ..requiredParameters.addAll([
                ...x.normalParameterNames
                    .map(
                      (e) => Parameter(
                        (p) => p
                          ..name = e
                          ..type = swidTypeToDartTypeReference(
                            swidType: castTypeParametersToDynamic(
                              swidType: x.normalParameterTypes.elementAt(
                                x.normalParameterNames
                                    .indexWhere((element) => element == e),
                              ),
                              preserveTypeParametersInLists: true,
                            ),
                          ),
                      ),
                    )
                    .toList(),
              ])
              ..optionalParameters.addAll([
                ...x.namedParameterTypes.entries
                    .map((e) => Parameter((p) => p
                      ..name = e.key
                      ..defaultTo = (x.namedDefaults[e.key] != null
                          ? Code(x.namedDefaults[e.key].name)
                          : null)
                      ..named = true
                      ..type = swidTypeToDartTypeReference(swidType: e.value)))
                    .toList()
              ])
              ..name = x.name
              ..returns = refer(
                x.typeFormals.isEmpty
                    ? castTypeParametersToDynamic(
                        swidType: x.returnType,
                        preserveTypeParametersInLists: true,
                      ).name
                    : x.returnType.name,
              )
              ..body = Block.of([
                Code(
                    "Closure closure = table[\"${transformAccessorName(swidFunctionType: transformTstlMethodNames(swidFunctionType: x)).name}\"];"),
                Code("return " +
                    DartUnboxingExpression(
                            swidType: castTypeParametersToDynamic(
                              swidType: x.returnType,
                              preserveTypeParametersInLists: false,
                            ),
                            expression: CodeExpression(Code(
                                "closure.dispatch([table],parentState: hydroState)[0]")))
                        .toDartSource() +
                    ";"),
              ])))
            ?.toList() ??
        [])).accept(DartEmitter()).toString());
}
