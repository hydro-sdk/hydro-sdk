import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';

part "swidInstantiableGeneric.freezed.dart";
part "swidInstantiableGeneric.g.dart";

@freezed
abstract class SwidInstantiableGeneric with _$SwidInstantiableGeneric {
  const factory SwidInstantiableGeneric.fromSwidClass({
    required SwidClass swidClass,
  }) = _$SwidInstantiableGenericFromSwidClass;

  const factory SwidInstantiableGeneric.fromSwidInterface({
    required SwidInterface swidInterface,
  }) = _$SwidInstantiableGenericFromSwidInterface;

  const factory SwidInstantiableGeneric.fromSwidFunctionType({
    required SwidFunctionType swidFunctionType,
  }) = _$SwidInstantiableGenericFromSwidFunctionType;

  factory SwidInstantiableGeneric.fromJson(Map<String, dynamic> json) =>
      _$SwidInstantiableGenericFromJson(json);
}
