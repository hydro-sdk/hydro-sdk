import 'package:code_builder/code_builder.dart'
    show DartEmitter, Expression, refer, Method, Parameter, Block, Code;

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/dart/util/codeKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'dartBoxEnumReference.freezed.dart';

@freezed
class DartBoxEnumReference
    with
        _$DartBoxEnumReference,
        HashKeyMixin<DartBoxEnumReference>,
        HashComparableMixin<DartBoxEnumReference>,
        SwarsTransformMixin<DartBoxEnumReference,
            $DartBoxEnumReferenceCopyWith<DartBoxEnumReference>, String>,
        SwarsTermStringResultMixin {
  DartBoxEnumReference._();

  factory DartBoxEnumReference({
    required final SwidType? type,
    required final String referenceName,
    @Default(CodeKind.statement) final CodeKind codeKind,
  }) = _$DartBoxEnumReferenceCtor;

  @override
  String get cacheGroup => "dartBoxEnumReference";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* type?.hashKey.hashableParts ?? [];
    yield [
      ...referenceName.codeUnits,
    ];
    yield [
      codeKind.index,
    ];
  }

  @override
  DartBoxEnumReference clone({
    final SwidType? type,
    final String? referenceName,
    final CodeKind? codeKind,
  }) =>
      DartBoxEnumReference(
        type: type ?? this.type?.clone(),
        referenceName: referenceName ?? this.referenceName,
        codeKind: codeKind ?? this.codeKind,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        ((Expression expression) => codeKind == CodeKind.statement
                ? expression.statement
                : codeKind == CodeKind.expression
                    ? expression.expression
                    : null)(
          refer(type!.name).property("values").property("indexWhere").call(
            [
              Method(
                (k) => k
                  ..requiredParameters.addAll([
                    Parameter((p) => p..name = "x"),
                  ])
                  ..body = Block.of(
                    [
                      Code(
                        "return x == $referenceName;",
                      ),
                    ],
                  ),
              ).closure
            ],
            {},
          ),
        )!
            .accept(
              DartEmitter(
                useNullSafetySyntax: true,
              ),
            )
            .toString(),
      );
}
