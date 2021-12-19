import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformTypeFormalToTs.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'transformTypeFormalsToTs.freezed.dart';

@freezed
class TransformTypeFormalsToTs
    with
        _$TransformTypeFormalsToTs,
        HashKeyMixin<TransformTypeFormalsToTs>,
        HashComparableMixin<TransformTypeFormalsToTs>,
        SwarsTransformMixin<
            TransformTypeFormalsToTs,
            $TransformTypeFormalsToTsCopyWith<TransformTypeFormalsToTs>,
            String>,
        SwarsTermStringResultMixin {
  TransformTypeFormalsToTs._();

  factory TransformTypeFormalsToTs({
    required final List<SwidTypeFormal> swidTypeFormals,
  }) = _$TransformTypeFormalsToTsCtor;

  @override
  String get cacheGroup => "transformTypeFormalsToTs";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidTypeFormals.hashableParts;
  }

  @override
  TransformTypeFormalsToTs clone({
    final List<SwidTypeFormal>? swidTypeFormals,
  }) =>
      TransformTypeFormalsToTs(
        swidTypeFormals: swidTypeFormals ?? this.swidTypeFormals,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        swidTypeFormals.isNotEmpty
            ? ([
                "<",
                swidTypeFormals
                    .map(
                      (x) => pipeline.reduceFromTerm(
                        TransformTypeFormalToTs(
                          swidTypeFormal: x,
                        ),
                      ),
                    )
                    .join(", "),
                ">"
              ]).join()
            : "",
      );
}
