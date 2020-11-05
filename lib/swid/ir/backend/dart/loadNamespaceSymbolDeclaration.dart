import 'package:code_builder/code_builder.dart'
    show
        DartEmitter,
        Parameter,
        refer,
        literalString,
        literalList,
        Method,
        Block,
        literalNum;
import 'package:dart_style/dart_style.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/luaDartBinding.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
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
            /*
              args[0] - caller
              args[1...n] - positional arguments
              args[n + 1] - named arguments
            */
            literalList([
              refer("RTManaged${swidClass.name}").call(
                  swidClass.constructorType.normalParameterNames.isNotEmpty
                      ? swidClass.constructorType.normalParameterNames
                          .map((x) => refer("args").index(literalNum(swidClass
                                  .constructorType.normalParameterNames
                                  .indexWhere((e) => e == x) +
                              1)))
                          .toList()
                      : [],
                  swidClass.constructorType.namedParameterTypes.isNotEmpty
                      ? Map.fromEntries([
                          MapEntry("table", refer("args").index(literalNum(0))),
                          MapEntry("hydroState", refer("hydroState")),
                          ...(swidClass
                              .constructorType.namedParameterTypes.entries
                              .map((x) => MapEntry(
                                  x.key,
                                  refer("args")
                                      .index(literalNum(swidClass
                                              .constructorType
                                              .normalParameterNames
                                              .length +
                                          1))
                                      .index(literalString(x.key))))),
                        ])
                      : {})
            ]).returned.statement
          ])))
          .statement
    ])).accept(DartEmitter()).toString());
}
