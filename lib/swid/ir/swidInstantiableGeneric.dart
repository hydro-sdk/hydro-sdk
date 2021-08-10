import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';

part "swidInstantiableGeneric.freezed.dart";
part "swidInstantiableGeneric.g.dart";

@freezed
class SwidInstantiableGeneric with _$SwidInstantiableGeneric {
  const factory SwidInstantiableGeneric.fromSwidClass({
    required final SwidClass swidClass,
  }) = _$SwidInstantiableGenericFromSwidClass;

  const factory SwidInstantiableGeneric.fromSwidInterface({
    required final SwidInterface swidInterface,
  }) = _$SwidInstantiableGenericFromSwidInterface;

  const factory SwidInstantiableGeneric.fromSwidFunctionType({
    required final SwidFunctionType swidFunctionType,
  }) = _$SwidInstantiableGenericFromSwidFunctionType;

  factory SwidInstantiableGeneric.fromJson(Map<String, dynamic> json) =>
      _$SwidInstantiableGenericFromJson(json);
}
