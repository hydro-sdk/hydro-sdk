import 'package:dartlin/control_flow.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidOriginatedAncestorTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidInterfaceResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsAnalysisMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
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
        SwarsEphemeralTermMixin,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidInterfaceResultMixin {
  SuitableTypeFormalBound._();

  factory SuitableTypeFormalBound({
    required final SwidInterface candidateInterface,
    required final List<SwidOriginatedAncestorTypeFormal>? swidTypeFormals,
  }) = _$SuitableTypeFormalBoundCtor;

  @override
  String get cacheGroup => "suitableTypeFormalBound";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* candidateInterface.hashKey.hashableParts;
    yield* swidTypeFormals?.hashableParts ?? [];
  }

  @override
  SuitableTypeFormalBound clone({
    final SwidInterface? candidateInterface,
    final List<SwidOriginatedAncestorTypeFormal>? swidTypeFormals,
  }) =>
      SuitableTypeFormalBound(
        candidateInterface: candidateInterface ?? this.candidateInterface,
        swidTypeFormals: swidTypeFormals ?? this.swidTypeFormals,
      );

  @override
  ISwarsTermResult<SwidInterface> analyze({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        swidTypeFormals
                ?.whereIndexed(
                  (i, x) =>
                      x.kind == SwidOriginatedAncestorTypeFormalKind.kClass &&
                      swidTypeFormals?.firstWhereIndexedOrNull(
                            (j, k) =>
                                j != i &&
                                k.kind ==
                                    SwidOriginatedAncestorTypeFormalKind
                                        .kMethod &&
                                removeNullabilitySuffix(
                                      str: x.swidTypeFormal.value.displayName,
                                    ) ==
                                    removeNullabilitySuffix(
                                      str: k.swidTypeFormal.value.displayName,
                                    ),
                          ) ==
                          null,
                )
                .firstWhereOrNull(
                  (x) =>
                      removeNullabilitySuffix(
                        str: x.swidTypeFormal.value.displayName,
                      ) ==
                      removeNullabilitySuffix(
                        str: candidateInterface.displayName,
                      ),
                )
                ?.swidTypeFormal
                .swidTypeFormalBound
                ?.when(
                  fromSwidInterface: (val) => val.clone(
                    nullabilitySuffix: iff(
                      candidateInterface.nullabilitySuffix ==
                              SwidNullabilitySuffix.question ||
                          val.nullabilitySuffix ==
                              SwidNullabilitySuffix.question,
                      () => SwidNullabilitySuffix.question,
                    ).orElse(
                      () => SwidNullabilitySuffix.none,
                    ),
                  ),
                  fromSwidFunctionType: (_) => dartUnknownInterface,
                ) ??
            dartUnknownInterface,
      );
}
