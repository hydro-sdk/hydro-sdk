import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidOriginatedAncestorTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateGenericsToLowestBound.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
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
        SwarsEphemeralTermMixin,
        SwarsTermJsonTransformableResultMixin {
  InstantiateTypeFormalToLowestBound._();

  /// Returns a type formal who's value is the same as it's lowest bound
  factory InstantiateTypeFormalToLowestBound({
    required final SwidTypeFormal swidTypeFormal,
    required final List<SwidOriginatedAncestorTypeFormal> swidTypeFormals,
  }) = _$InstantiateTypeFormalToLowestBoundCtor;

  @override
  String get cacheGroup => "instantiateTypeFormalToLowestBound";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidTypeFormal.hashKey.hashableParts;
    yield* swidTypeFormals.hashableParts;
  }

  @override
  InstantiateTypeFormalToLowestBound clone({
    final SwidTypeFormal? swidTypeFormal,
    final List<SwidOriginatedAncestorTypeFormal>? swidTypeFormals,
  }) =>
      InstantiateTypeFormalToLowestBound(
        swidTypeFormal: swidTypeFormal ?? this.swidTypeFormal,
        swidTypeFormals: swidTypeFormals ?? this.swidTypeFormals,
      );

  @override
  SwidTypeFormal termResultDeserializer(final Map<String, dynamic> json) =>
      SwidTypeFormal.fromJson(json);

  @override
  ISwarsTermResult<SwidTypeFormal> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        swidTypeFormal.swidTypeFormalBound != null
            ? swidTypeFormal.clone(
                value: swidTypeFormal.swidTypeFormalBound?.when(
                  fromSwidInterface: (val) =>
                      SwidTypeFormalValue.fromSwidInterface(
                    swidInterface: pipeline
                        .reduceFromTerm(
                          InstantiateGenericsToLowestBound(
                            swidTypeFormals: swidTypeFormals,
                            swidType: SwidType.fromSwidInterface(
                              swidInterface: val,
                            ),
                          ),
                        )
                        .when(
                          fromSwidInterface: (val) => val,
                          fromSwidClass: (_) => dartUnknownInterface,
                          fromSwidDefaultFormalParameter: (_) =>
                              dartUnknownInterface,
                          fromSwidFunctionType: (_) => dartUnknownInterface,
                        ),
                  ),
                  fromSwidFunctionType: (val) =>
                      SwidTypeFormalValue.fromSwidFunctionType(
                    swidFunctionType: val.clone(),
                  ),
                ),
              )
            : swidTypeFormal.clone(
                value: SwidTypeFormalValue.fromSwidInterface(
                  swidInterface: dartDynamic,
                ),
              ),
      );
}
