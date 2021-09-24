import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformLiteralToTs.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstMapLiteralEntry.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsNonUniqueTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/unHashableMixin.dart';

part 'transformStaticConstMapLiteralEntryToTs.freezed.dart';

@freezed
class TransformStaticConstMapLiteralEntryToTs
    with
        _$TransformStaticConstMapLiteralEntryToTs,
        HashKeyMixin<TransformStaticConstMapLiteralEntryToTs>,
        HashComparableMixin<TransformStaticConstMapLiteralEntryToTs>,
        UnhashableMixin<TransformStaticConstMapLiteralEntryToTs>,
        SwarsNonUniqueTermMixin<
            TransformStaticConstMapLiteralEntryToTs,
            $TransformStaticConstMapLiteralEntryToTsCopyWith<
                TransformStaticConstMapLiteralEntryToTs>,
            String>,
        SwarsTransformMixin<
            TransformStaticConstMapLiteralEntryToTs,
            $TransformStaticConstMapLiteralEntryToTsCopyWith<
                TransformStaticConstMapLiteralEntryToTs>,
            String>,
        SwarsTermStringResultMixin {
  TransformStaticConstMapLiteralEntryToTs._();

  factory TransformStaticConstMapLiteralEntryToTs({
    required final SwidStaticConstMapLiteralEntry staticConstMapLiteralEntry,
    required final SwidClass? parentClass,
    required final String inexpressibleFunctionInvocationFallback,
    required final SwidStaticConstFieldReferenceScopeResolver scopeResolver,
  }) = _$TransformStaticConstMapLiteralEntryToTsCtor;

  @override
  TransformStaticConstMapLiteralEntryToTs clone({
    final SwidStaticConstMapLiteralEntry? staticConstMapLiteralEntry,
    final SwidClass? parentClass,
    final String? inexpressibleFunctionInvocationFallback,
    final SwidStaticConstFieldReferenceScopeResolver? scopeResolver,
  }) =>
      TransformStaticConstMapLiteralEntryToTs(
        staticConstMapLiteralEntry:
            staticConstMapLiteralEntry ?? this.staticConstMapLiteralEntry,
        parentClass: parentClass ?? this.parentClass,
        inexpressibleFunctionInvocationFallback:
            inexpressibleFunctionInvocationFallback ??
                this.inexpressibleFunctionInvocationFallback,
        scopeResolver: scopeResolver ?? this.scopeResolver,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        [
          " new MapEntry(",
          pipeline.reduceFromTerm(
            TransformLiteralToTs(
              swidLiteral: staticConstMapLiteralEntry.key,
              parentClass: parentClass,
              inexpressibleFunctionInvocationFallback:
                  inexpressibleFunctionInvocationFallback,
              scopeResolver: scopeResolver,
            ),
          ),
          " , ",
          pipeline.reduceFromTerm(
            TransformLiteralToTs(
              swidLiteral: staticConstMapLiteralEntry.value,
              parentClass: parentClass,
              inexpressibleFunctionInvocationFallback:
                  inexpressibleFunctionInvocationFallback,
              scopeResolver: scopeResolver,
            ),
          ),
          ")",
        ].join(),
      );
}
