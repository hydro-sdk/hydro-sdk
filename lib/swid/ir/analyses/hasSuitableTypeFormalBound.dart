import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/analyses/suitableTypeFormalBound.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidOriginatedAncestorTypeFormal.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsAnalysisMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermBoolResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'hasSuitableTypeFormalBound.freezed.dart';

@freezed
class HasSuitableTypeFormalBound
    with
        _$HasSuitableTypeFormalBound,
        HashKeyMixin<HasSuitableTypeFormalBound>,
        HashComparableMixin<HasSuitableTypeFormalBound>,
        SwarsAnalysisMixin<
            HasSuitableTypeFormalBound,
            $HasSuitableTypeFormalBoundCopyWith<HasSuitableTypeFormalBound>,
            bool>,
        SwarsTermBoolResultMixin {
  HasSuitableTypeFormalBound._();

  factory HasSuitableTypeFormalBound({
    required final SwidInterface candidateInterface,
    required final List<SwidOriginatedAncestorTypeFormal>? swidTypeFormals,
  }) = _$HasSuitableTypeFormalBoundCtor;

  @override
  String get cacheGroup => "hasSuitableTypeFormalBound";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* candidateInterface.hashKey.hashableParts;
    yield* swidTypeFormals?.hashableParts ?? [];
  }

  @override
  HasSuitableTypeFormalBound clone({
    final SwidInterface? candidateInterface,
    final List<SwidOriginatedAncestorTypeFormal>? swidTypeFormals,
  }) =>
      HasSuitableTypeFormalBound(
        candidateInterface: candidateInterface ?? this.candidateInterface,
        swidTypeFormals: swidTypeFormals ?? this.swidTypeFormals,
      );

  @override
  ISwarsTermResult<bool> analyze({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromBool(
        pipeline.reduceFromTerm(
              SuitableTypeFormalBound(
                candidateInterface: candidateInterface,
                swidTypeFormals: swidTypeFormals,
              ),
            ) !=
            dartUnknownInterface,
      );
}
