import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/methodInjectionFieldName.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsClassMethodInjectionFieldName.freezed.dart';

@freezed
class TsClassMethodInjectionFieldName
    with
        _$TsClassMethodInjectionFieldName,
        HashKeyMixin<TsClassMethodInjectionFieldName>,
        HashComparableMixin<TsClassMethodInjectionFieldName>,
        SwarsTransformMixin<
            TsClassMethodInjectionFieldName,
            $TsClassMethodInjectionFieldNameCopyWith<
                TsClassMethodInjectionFieldName>,
            String>,
        SwarsTermStringResultMixin {
  TsClassMethodInjectionFieldName._();

  factory TsClassMethodInjectionFieldName({
    required final SwidFunctionType swidFunctionType,
  }) = _$TsClassMethodInjectionFieldNameCtor;

  @override
  String get cacheGroup => "tsClassMethodInjectionFieldName";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidFunctionType.hashKey.hashableParts;
  }

  @override
  TsClassMethodInjectionFieldName clone({
    final SwidFunctionType? swidFunctionType,
  }) =>
      TsClassMethodInjectionFieldName(
        swidFunctionType: swidFunctionType ?? this.swidFunctionType,
      );

  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        methodInjectionFieldName(
          swidFunctionType: swidFunctionType,
        ),
      );
}
