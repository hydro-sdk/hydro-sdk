import 'package:code_builder/code_builder.dart'
    show DartEmitter, Expression, refer, Method, Parameter, Block, Code;

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBoxEnumReference.dart';
import 'package:hydro_sdk/swid/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/backend/dart/util/codeKind.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'dartBoxList.freezed.dart';

@freezed
class DartBoxList
    with
        _$DartBoxList,
        HashKeyMixin<DartBoxList>,
        HashComparableMixin<DartBoxList>,
        SwarsTransformMixin<DartBoxList, $DartBoxListCopyWith<DartBoxList>,
            String>,
        SwarsTermStringResultMixin {
  DartBoxList._();

  factory DartBoxList({
    required final SwidInterface type,
    required final String referenceName,
    @Default(CodeKind.statement) final CodeKind codeKind,
  }) = _$DartBoxListCtor;

  @override
  String get cacheGroup => "dartBoxList";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* type.hashKey.hashableParts;
    yield* referenceName.hashableParts;
  }

  @override
  DartBoxList clone({
    final SwidInterface? type,
    final String? referenceName,
    final CodeKind? codeKind,
  }) =>
      DartBoxList(
        type: type ?? this.type.clone(),
        referenceName: referenceName ?? this.referenceName,
        codeKind: codeKind ?? this.codeKind,
      );

  String _boxList({
    required final ISwarsPipeline pipeline,
  }) =>
      ((Expression expression) => codeKind == CodeKind.statement
              ? expression.statement
              : codeKind == CodeKind.expression
                  ? expression.expression
                  : null)(refer(referenceName)
              .property("map")
              .call(
                [
                  Method(
                    (m) => m
                      ..requiredParameters.addAll([
                        Parameter((p) => p..name = "x"),
                      ])
                      ..lambda = true
                      ..body = Block.of(
                        [
                          Code(
                            narrowSwidInterfaceByReferenceDeclaration(
                              swidInterface: type.typeArguments.first.type.when(
                                fromSwidInterface: (val) => val,
                                fromSwidClass: (_) => dartUnknownInterface,
                                fromSwidDefaultFormalParameter: (_) =>
                                    dartUnknownInterface,
                                fromSwidFunctionType: (_) =>
                                    dartUnknownInterface,
                              ),
                              onPrimitive: (_) => "",
                              onClass: (val) => pipeline.reduceFromTerm(
                                DartBoxObjectReference(
                                  type: val,
                                  boxLists: true,
                                  tableExpression: null,
                                  objectReference: refer("x"),
                                  codeKind: CodeKind.expression,
                                ),
                              ),
                              onEnum: (val) => pipeline.reduceFromTerm(
                                DartBoxEnumReference(
                                  type: SwidType.fromSwidInterface(
                                      swidInterface: val),
                                  codeKind: CodeKind.expression,
                                  referenceName: refer("x")
                                      .accept(
                                        DartEmitter(
                                          useNullSafetySyntax: true,
                                        ),
                                      )
                                      .toString(),
                                ),
                              ),
                              onVoid: (_) => "",
                              onTypeParameter: (_) => "",
                              onDynamic: (_) => "",
                              onUnknown: (_) => "",
                            ),
                          ),
                        ],
                      ),
                  ).closure.expression
                ],
                {},
              )
              .property("toList")
              .call([]))!
          .accept(
            DartEmitter(
              useNullSafetySyntax: true,
            ),
          )
          .toString();

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        narrowSwidInterfaceByReferenceDeclaration(
          swidInterface: type.typeArguments.first.type.when(
            fromSwidInterface: (val) => val,
            fromSwidClass: (_) => dartUnknownInterface,
            fromSwidDefaultFormalParameter: (_) => dartUnknownInterface,
            fromSwidFunctionType: (_) => dartUnknownInterface,
          ),
          onPrimitive: (_) => referenceName,
          onClass: (_) => _boxList(
            pipeline: pipeline,
          ),
          onEnum: (_) => _boxList(
            pipeline: pipeline,
          ),
          onVoid: (_) => referenceName,
          onDynamic: (_) => referenceName,
          onTypeParameter: (_) => referenceName,
          onUnknown: (_) => referenceName,
        ),
      );
}
