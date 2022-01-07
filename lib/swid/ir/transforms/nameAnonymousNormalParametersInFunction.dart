import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'nameAnonymousNormalParametersInFunction.freezed.dart';

@freezed
class NameAnonymousNormalParametersInFunction
    with
        _$NameAnonymousNormalParametersInFunction,
        HashKeyMixin<NameAnonymousNormalParametersInFunction>,
        HashComparableMixin<NameAnonymousNormalParametersInFunction>,
        SwarsTransformMixin<NameAnonymousNormalParametersInFunction,
            $NameAnonymousNormalParametersInFunctionCopyWith, SwidFunctionType>,
        SwarsTermJsonTransformableResultMixin {
  NameAnonymousNormalParametersInFunction._();

  factory NameAnonymousNormalParametersInFunction({
    required final SwidFunctionType swidFunctionType,
  }) = _$NameAnonymousNormalParametersInFunctionCtor;

  @override
  String get cacheGroup => "nameAnonymousNormalParametersInFunction";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidFunctionType.hashKey.hashableParts;
  }

  @override
  NameAnonymousNormalParametersInFunction clone({
    final SwidFunctionType? swidFunctionType,
  }) =>
      NameAnonymousNormalParametersInFunction(
        swidFunctionType: swidFunctionType ?? this.swidFunctionType,
      );

  @override
  SwidFunctionType termResultDeserializer(final Map<String, dynamic> json) =>
      SwidFunctionType.fromJson(json);

  @override
  ISwarsTermResult<SwidFunctionType> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        swidFunctionType.normalParameterNames.where((x) => x.isEmpty).isEmpty
            ? swidFunctionType.clone()
            : swidFunctionType.clone(
                normalParameterNames: swidFunctionType.normalParameterNames
                    .mapIndexed(
                      (i, x) => x.isEmpty
                          ? Iterable.generate(i + 1, (_) => "_").join("")
                          : x,
                    )
                    .toList(),
              ),
      );
}
