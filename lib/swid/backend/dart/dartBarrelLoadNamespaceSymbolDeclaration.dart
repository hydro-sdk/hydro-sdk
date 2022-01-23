import 'package:code_builder/code_builder.dart'
    show DartEmitter, Parameter, refer, literalString, Method, Code;

import 'package:dart_style/dart_style.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/util/barrelSpec.dart';
import 'package:hydro_sdk/swid/backend/util/requiresDartClassTranslationUnit.dart';
import 'package:hydro_sdk/swid/ir/analyses/isUnrepresentableStaticConst.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/transformToPascalCase.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'dartBarrelLoadNamespaceSymbolDeclaration.freezed.dart';

@freezed
class DartBarrelLoadNamespaceSymbolDeclaration
    with
        _$DartBarrelLoadNamespaceSymbolDeclaration,
        HashKeyMixin<DartBarrelLoadNamespaceSymbolDeclaration>,
        HashComparableMixin<DartBarrelLoadNamespaceSymbolDeclaration>,
        SwarsTransformMixin<
            DartBarrelLoadNamespaceSymbolDeclaration,
            $DartBarrelLoadNamespaceSymbolDeclarationCopyWith<
                DartBarrelLoadNamespaceSymbolDeclaration>,
            String>,
        SwarsTermStringResultMixin {
  DartBarrelLoadNamespaceSymbolDeclaration._();

  factory DartBarrelLoadNamespaceSymbolDeclaration({
    required final BarrelSpec barrelSpec,
  }) = _$DartBarrelLoadNamespaceSymbolDeclarationCtor;

  @override
  String get cacheGroup => "dartBarrelLoadNamespaceSymbolDeclaration";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* barrelSpec.hashKey.hashableParts;
  }

  @override
  DartBarrelLoadNamespaceSymbolDeclaration clone({
    final BarrelSpec? barrelSpec,
  }) =>
      DartBarrelLoadNamespaceSymbolDeclaration(
        barrelSpec: barrelSpec ?? this.barrelSpec.clone(),
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        DartFormatter().format(
          Method((m) => m
                ..name = "load${barrelSpec.name}"
                ..returns = refer("void")
                ..optionalParameters.addAll([
                  Parameter((p) => p
                    ..required = true
                    ..named = true
                    ..name = "hydroState"
                    ..type = refer("HydroState")),
                  barrelSpec.isTopLevel()
                      ? Parameter((p) => p
                        ..required = true
                        ..named = true
                        ..name = "context"
                        ..type = refer("Context"))
                      : Parameter((p) => p
                        ..required = true
                        ..named = true
                        ..name = "table"
                        ..type = refer("HydroTable")),
                ])
                ..body = Code([
                  refer("HydroTable")
                      .call([])
                      .assignFinal(barrelSpec.name)
                      .statement
                      .accept(DartEmitter(
                        useNullSafetySyntax: true,
                      ))
                      .toString(),
                  barrelSpec.isTopLevel()
                      ? refer("context")
                          .property("env")
                          .index(literalString(barrelSpec.name))
                          .assign(refer(barrelSpec.name))
                          .statement
                          .accept(DartEmitter(
                            useNullSafetySyntax: true,
                          ))
                          .toString()
                      : refer("table")
                          .index(literalString(barrelSpec.name))
                          .assign(refer(barrelSpec.name))
                          .statement
                          .accept(DartEmitter(
                            useNullSafetySyntax: true,
                          ))
                          .toString(),
                  ...barrelSpec.members
                      .where((x) => x.name != "_internal")
                      .where((x) => x.when(
                            fromSwidClass: (val) =>
                                requiresDartClassTranslationUnit(
                              pipeline: pipeline,
                              swidClass: val.clone(
                                staticConstFieldDeclarations:
                                    val.staticConstFieldDeclarations
                                        .where(
                                          (x) => !pipeline.reduceFromTerm(
                                            IsUnrepresentableStaticConst(
                                              parentClass: val,
                                              staticConst: x.value,
                                            ),
                                          ),
                                        )
                                        .toList(),
                              ),
                            ),
                            fromSwidEnum: (_) => true,
                            fromBarrelSpec: (_) => true,
                          ))
                      .map((x) => refer(x.when(
                            fromSwidClass: (val) =>
                                "load${transformToPascalCase(str: val.name)}",
                            fromSwidEnum: (val) =>
                                "load${transformToPascalCase(str: val.identifier)}",
                            fromBarrelSpec: (val) => "load${val.name}",
                          ))
                              .call([], {
                                "table": refer(barrelSpec.name),
                                "hydroState": refer("hydroState"),
                              })
                              .statement
                              .accept(DartEmitter(
                                useNullSafetySyntax: true,
                              ))
                              .toString())
                      .toList()
                ].join("\n")))
              .accept(DartEmitter(
                useNullSafetySyntax: true,
              ))
              .toString(),
        ),
      );
}
