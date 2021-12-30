import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidInterfaceResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsAnalysisMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/transforms/removeNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'suitableTypeFormalBound.freezed.dart';

@freezed
class SuitableTypeFormalBound
    with
        _$SuitableTypeFormalBound,
        HashKeyMixin<SuitableTypeFormalBound>,
        HashComparableMixin<SuitableTypeFormalBound>,
        SwarsAnalysisMixin<
            SuitableTypeFormalBound,
            $SuitableTypeFormalBoundCopyWith<SuitableTypeFormalBound>,
            SwidInterface>,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidInterfaceResultMixin {
  SuitableTypeFormalBound._();

  factory SuitableTypeFormalBound({
    required final SwidInterface candidateInterface,
    required final List<SwidTypeFormal>? swidTypeFormals,
  }) = _$SuitableTypeFormalBoundCtor;

  @override
  String get cacheGroup => "suitableTypeFormalBound";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield [
      ...candidateInterface.hashKey.hashableParts,
    ];
    yield* swidTypeFormals?.hashableParts ?? [];
  }

  @override
  SuitableTypeFormalBound clone({
    final SwidInterface? candidateInterface,
    final List<SwidTypeFormal>? swidTypeFormals,
  }) =>
      SuitableTypeFormalBound(
        candidateInterface: candidateInterface ?? this.candidateInterface,
        swidTypeFormals: swidTypeFormals ?? this.swidTypeFormals,
      );

  @override
  ISwarsTermResult<SwidInterface> analyze({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        swidTypeFormals
                ?.firstWhereOrNull(
                  (x) =>
                      removeNullabilitySuffix(
                        str: x.value.displayName,
                      ) ==
                      removeNullabilitySuffix(
                        str: candidateInterface.displayName,
                      ),
                )
                ?.swidTypeFormalBound
                ?.when(
                  fromSwidInterface: (val) => val,
                  fromSwidFunctionType: (_) => dartUnknownInterface,
                ) ??
            dartUnknownInterface,
      );
}
