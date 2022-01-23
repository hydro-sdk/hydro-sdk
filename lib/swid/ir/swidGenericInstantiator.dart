import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidInstantiatedGeneric.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part "swidGenericInstantiator.freezed.dart";
part "swidGenericInstantiator.g.dart";

@freezed
class SwidGenericInstantiator
    with
        _$SwidGenericInstantiator,
        HashKeyMixin<SwidGenericInstantiator>,
        HashComparableMixin<SwidGenericInstantiator>
    implements
        ICopyable<SwidGenericInstantiator,
            $SwidGenericInstantiatorCopyWith<SwidGenericInstantiator>> {
  SwidGenericInstantiator._();

  factory SwidGenericInstantiator({
    required final String name,
    required final SwidInstantiatedGeneric instantiatedGeneric,
  }) = _$SwidGenericInstantiatorCtor;

  factory SwidGenericInstantiator.fromJson(Map<String, dynamic> json) =>
      _$SwidGenericInstantiatorFromJson(json);

  factory SwidGenericInstantiator._clone({
    required final SwidGenericInstantiator swidGenericInstantiator,
    final String? name,
    final SwidInstantiatedGeneric? instantiatedGeneric,
  }) =>
      SwidGenericInstantiator(
        name: name ?? swidGenericInstantiator.name,
        instantiatedGeneric:
            instantiatedGeneric ?? swidGenericInstantiator.instantiatedGeneric,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* name.hashableParts;
    yield* instantiatedGeneric.hashKey.hashableParts;
  })();

  @override
  SwidGenericInstantiator clone({
    final String? name,
    final SwidInstantiatedGeneric? instantiatedGeneric,
  }) =>
      SwidGenericInstantiator._clone(
        swidGenericInstantiator: this,
        name: name,
        instantiatedGeneric: instantiatedGeneric,
      );
}
