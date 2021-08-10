import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidInstantiatedGeneric.dart';

part "swidGenericInstantiator.freezed.dart";
part "swidGenericInstantiator.g.dart";

@freezed
class SwidGenericInstantiator with _$SwidGenericInstantiator {
  const factory SwidGenericInstantiator({
    required final String name,
    required final SwidInstantiatedGeneric instantiatedGeneric,
  }) = _$SwidGenericInstantiatorCtor;

  factory SwidGenericInstantiator.fromJson(Map<String, dynamic> json) =>
      _$SwidGenericInstantiatorFromJson(json);
}
