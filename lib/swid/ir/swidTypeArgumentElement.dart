import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';
import 'package:hydro_sdk/swid/util/iJsonTransformable.dart';

part 'swidTypeArgumentElement.freezed.dart';
part 'swidTypeArgumentElement.g.dart';

@freezed
class SwidTypeArgumentElement
    with
        _$SwidTypeArgumentElement,
        HashKeyMixin<SwidTypeArgumentElement>,
        HashComparableMixin<SwidTypeArgumentElement>
    implements
        ICopyable<SwidTypeArgumentElement,
            $SwidTypeArgumentElementCopyWith<SwidTypeArgumentElement>>,
        IJsonTransformable {
  SwidTypeArgumentElement._();

  factory SwidTypeArgumentElement({
    required final SwidType bound,
  }) = _$SwidTypeArgumentElementCtor;

  factory SwidTypeArgumentElement.fromJson(Map<String, dynamic> json) =>
      _$SwidTypeArgumentElementFromJson(json);

  @override
  SwidTypeArgumentElement fromJson(Map<String, dynamic> json) =>
      SwidTypeArgumentElement.fromJson(json);

  factory SwidTypeArgumentElement.clone({
    required final SwidTypeArgumentElement swidTypeArgumentElement,
    final SwidType? bound,
  }) =>
      SwidTypeArgumentElement(
        bound: bound ?? swidTypeArgumentElement.bound,
      );

  @override
  SwidTypeArgumentElement clone({
    final SwidType? bound,
  }) =>
      SwidTypeArgumentElement.clone(
        swidTypeArgumentElement: this,
        bound: bound,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* bound.hashKey.hashableParts;
  })();
}
