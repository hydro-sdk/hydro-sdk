import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'instantiateTypeFormalToLowestBound.freezed.dart';

@freezed
class InstantiateTypeFormalToLowestBound
    with
        _$InstantiateTypeFormalToLowestBound,
        HashKeyMixin<InstantiateTypeFormalToLowestBound>,
        HashComparableMixin<InstantiateTypeFormalToLowestBound>,
        SwarsTransformMixin<
            InstantiateTypeFormalToLowestBound,
            $InstantiateTypeFormalToLowestBoundCopyWith<
                InstantiateTypeFormalToLowestBound>,
            SwidTypeFormal>,
        SwarsTermJsonTransformableResultMixin {
  InstantiateTypeFormalToLowestBound._();

  /// Returns a type formal who's value is the same as it's lowest bound
  factory InstantiateTypeFormalToLowestBound({
    required final SwidTypeFormal swidTypeFormal,
  }) = _$InstantiateTypeFormalToLowestBoundCtor;

  @override
  String get cacheGroup => "instantiateTypeFormalToLowestBound";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidTypeFormal.hashKey.hashableParts;
  }

  @override
  InstantiateTypeFormalToLowestBound clone({
    final SwidTypeFormal? swidTypeFormal,
  }) =>
      InstantiateTypeFormalToLowestBound(
        swidTypeFormal: swidTypeFormal ?? this.swidTypeFormal,
      );

  @override
  SwidTypeFormal termResultDeserializer(final Map<String, dynamic> json) =>
      SwidTypeFormal.fromJson(json);

  @override
  ISwarsTermResult<SwidTypeFormal> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        swidTypeFormal.swidTypeFormalBound != null
            ? swidTypeFormal.clone(
                value: swidTypeFormal.swidTypeFormalBound?.when(
                  fromSwidInterface: (val) =>
                      SwidTypeFormalValue.fromSwidInterface(
                    swidInterface: val.clone(),
                  ),
                  fromSwidFunctionType: (val) =>
                      SwidTypeFormalValue.fromSwidFunctionType(
                    swidFunctionType: val.clone(),
                  ),
                ),
              )
            : swidTypeFormal.clone(),
      );
}
