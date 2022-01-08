import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformPrimitiveFunctionTypeNamesToTs.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/util/isOperator.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsAnalysisMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableListResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/transforms/transformAccessorName.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsClassMethodInjectionCandidates.freezed.dart';

@freezed
class TsClassMethodInjectionCandidates
    with
        _$TsClassMethodInjectionCandidates,
        HashKeyMixin<TsClassMethodInjectionCandidates>,
        HashComparableMixin<TsClassMethodInjectionCandidates>,
        SwarsAnalysisMixin<
            TsClassMethodInjectionCandidates,
            $TsClassMethodInjectionCandidatesCopyWith<
                TsClassMethodInjectionCandidates>,
            List<SwidFunctionType>>,
        SwarsTermJsonTransformableListResultMixin {
  TsClassMethodInjectionCandidates._();

  factory TsClassMethodInjectionCandidates({
    required final List<SwidFunctionType> swidFunctionTypes,
  }) = _$TsClassMethodInjectionCandidatesCtor;

  @override
  String get cacheGroup => "tsClassMethodInjectionCandidates";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidFunctionTypes.hashableParts;
  }

  @override
  TsClassMethodInjectionCandidates clone({
    final List<SwidFunctionType>? swidFunctionTypes,
  }) =>
      TsClassMethodInjectionCandidates(
        swidFunctionTypes: swidFunctionTypes ?? this.swidFunctionTypes,
      );

  @override
  SwidFunctionType termResultDeserializer(final Map<String, dynamic> json) =>
      SwidFunctionType.fromJson(json);

  @override
  ISwarsTermResult<List<SwidFunctionType>> analyze({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromList(
        swidFunctionTypes
            .map(
              (x) => pipeline.reduceFromTerm(
                TransformPrimitiveFunctionTypeNamesToTs(
                  swidFunctionType: transformAccessorName(
                    swidFunctionType: x,
                  ),
                ),
              ),
            )
            .where(
              (x) => !isOperator(
                swidFunctionType: x,
              ),
            )
            .where(
              (x) => x.declarationModifiers.hasVisibleForTesting
                  ? x.declarationModifiers.hasProtected
                      ? true
                      : false
                  : true,
            )
            .toList(),
      );
}
