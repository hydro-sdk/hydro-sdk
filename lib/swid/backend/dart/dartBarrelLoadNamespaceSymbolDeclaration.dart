import 'package:dart_style/dart_style.dart';
import 'package:dartlin/control_flow.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/backend/dart/transforms/dartImportPrefix.dart';
import 'package:hydro_sdk/swid/backend/dart/util/constants.dart';
import 'package:hydro_sdk/swid/backend/dart/util/dartBarrelMemberImportPath.dart';
import 'package:hydro_sdk/swid/backend/util/barrelSpec.dart';
import 'package:hydro_sdk/swid/backend/util/requiresDartClassTranslationUnit.dart';
import 'package:hydro_sdk/swid/ir/analyses/isUnrepresentableStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/sixteenthHashName.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/transformToPascalCase.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

import 'package:code_builder/code_builder.dart'
    show DartEmitter, Parameter, refer, literalString, Method, Code;

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
        SwarsEphemeralTermMixin,
        SwarsTermStringResultMixin {
  DartBarrelLoadNamespaceSymbolDeclaration._();

  factory DartBarrelLoadNamespaceSymbolDeclaration({
    required final BarrelSpec barrelSpec,
    required final String packageName,
    required final List<String> prefixPaths,
  }) = _$DartBarrelLoadNamespaceSymbolDeclarationCtor;

  @override
  String get cacheGroup => "dartBarrelLoadNamespaceSymbolDeclaration";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* barrelSpec.hashKey.hashableParts;
    yield* packageName.hashableParts;
    yield* prefixPaths.hashableParts;
  }

  @override
  DartBarrelLoadNamespaceSymbolDeclaration clone({
    final BarrelSpec? barrelSpec,
    final String? packageName,
    final List<String>? prefixPaths,
  }) =>
      DartBarrelLoadNamespaceSymbolDeclaration(
        barrelSpec: barrelSpec ?? this.barrelSpec.clone(),
        packageName: packageName ?? this.packageName,
        prefixPaths: prefixPaths ?? this.prefixPaths,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        DartFormatter().format(
          Method(
            (m) => m
              ..name = "load${barrelSpec.name}"
              ..returns = refer("void")
              ..optionalParameters.addAll([
                Parameter(
                  (p) => p
                    ..required = true
                    ..named = true
                    ..name = "hydroState"
                    ..type = refer(
                      [
                        pipeline.reduceFromTerm(
                          DartImportPrefix(
                            swidType: SwidType.fromSwidInterface(
                              swidInterface: hydroState,
                            ),
                          ),
                        ),
                        hydroState.name,
                      ].join("."),
                    ),
                ),
                barrelSpec.isTopLevel()
                    ? Parameter(
                        (p) => p
                          ..required = true
                          ..named = true
                          ..name = "context"
                          ..type = refer(
                            [
                              pipeline.reduceFromTerm(
                                DartImportPrefix(
                                  swidType: SwidType.fromSwidInterface(
                                    swidInterface: context,
                                  ),
                                ),
                              ),
                              context.name,
                            ].join("."),
                          ),
                      )
                    : Parameter(
                        (p) => p
                          ..required = true
                          ..named = true
                          ..name = "table"
                          ..type = refer(
                            [
                              pipeline.reduceFromTerm(
                                DartImportPrefix(
                                  swidType: SwidType.fromSwidInterface(
                                    swidInterface: hydroTable,
                                  ),
                                ),
                              ),
                              hydroTable.name,
                            ].join("."),
                          ),
                      ),
              ])
              ..body = Code(
                [
                  refer(
                    [
                      pipeline.reduceFromTerm(
                        DartImportPrefix(
                          swidType: SwidType.fromSwidInterface(
                            swidInterface: hydroTable,
                          ),
                        ),
                      ),
                      hydroTable.name,
                    ].join("."),
                  )
                      .call([])
                      .assignFinal(
                        barrelSpec.name,
                      )
                      .statement
                      .accept(
                        DartEmitter(
                          useNullSafetySyntax: true,
                        ),
                      )
                      .toString(),
                  barrelSpec.isTopLevel()
                      ? refer("context")
                          .property("env")
                          .index(
                            literalString(
                              barrelSpec.name,
                            ),
                          )
                          .assign(
                            refer(
                              barrelSpec.name,
                            ),
                          )
                          .statement
                          .accept(
                            DartEmitter(
                              useNullSafetySyntax: true,
                            ),
                          )
                          .toString()
                      : refer("table")
                          .index(
                            literalString(
                              barrelSpec.name,
                            ),
                          )
                          .assign(
                            refer(
                              barrelSpec.name,
                            ),
                          )
                          .statement
                          .accept(
                            DartEmitter(
                              useNullSafetySyntax: true,
                            ),
                          )
                          .toString(),
                  ...barrelSpec.members
                      .where(
                        (x) => x.name != "_internal",
                      )
                      .where(
                        (x) => x.when(
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
                        ),
                      )
                      .map(
                        (x) => refer(
                          x
                              .let(
                                (it) => Tuple2(
                                  [
                                    "_",
                                    pipeline.reduceFromTerm(
                                      SixteenthHashName(
                                        str: dartBarrelMemberImportPath(
                                          barrelMember: it,
                                          packageName: packageName,
                                          prefixPaths: prefixPaths,
                                        ),
                                      ),
                                    ),
                                  ].join(),
                                  it,
                                ),
                              )
                              .let(
                                (it) => it.item2.when(
                                  fromSwidClass: (val) => [
                                    it.item1,
                                    "load${transformToPascalCase(str: val.name)}",
                                  ].join("."),
                                  fromSwidEnum: (val) => [
                                    it.item1,
                                    "load${transformToPascalCase(str: val.identifier)}",
                                  ].join("."),
                                  fromBarrelSpec: (val) => [
                                    it.item1,
                                    "load${val.name}",
                                  ].join("."),
                                ),
                              ),
                        )
                            .call(
                              [],
                              {
                                "table": refer(
                                  barrelSpec.name,
                                ),
                                "hydroState": refer(
                                  "hydroState",
                                ),
                              },
                            )
                            .statement
                            .accept(
                              DartEmitter(
                                useNullSafetySyntax: true,
                              ),
                            )
                            .toString(),
                      )
                      .toList()
                ].join("\n"),
              ),
          )
              .accept(
                DartEmitter(
                  useNullSafetySyntax: true,
                ),
              )
              .toString(),
        ),
      );
}
