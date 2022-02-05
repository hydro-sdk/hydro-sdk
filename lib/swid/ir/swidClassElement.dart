import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidElementReferenceInfo.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iJsonTransformable.dart';

part 'swidClassElement.freezed.dart';
part 'swidClassElement.g.dart';

@freezed
class SwidClassElement
    with
        _$SwidClassElement,
        HashKeyMixin<SwidClassElement>,
        HashComparableMixin<SwidClassElement>
    implements ISwidElementReferenceInfo, IJsonTransformable {
  SwidClassElement._();

  factory SwidClassElement({
    required final bool isShadowingParent,
    required final bool isClassReference,
  }) = _$SwidClassElementCtor;

  factory SwidClassElement.fromJson(final Map<String, dynamic> json) =>
      _$SwidClassElementFromJson(json);

  factory SwidClassElement.empty() => SwidClassElement(
        isShadowingParent: false,
        isClassReference: false,
      );

  @override
  SwidClassElement fromJson(final Map<String, dynamic> json) =>
      SwidClassElement.fromJson(json);

  @override
  SwidClassElement clone({
    final bool? isShadowingParent,
    final bool? isClassReference,
  }) =>
      SwidClassElement(
        isShadowingParent: isShadowingParent ?? this.isShadowingParent,
        isClassReference: isClassReference ?? this.isClassReference,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield isShadowingParent.hashableParts;
    yield isClassReference.hashableParts;
  })();
}
