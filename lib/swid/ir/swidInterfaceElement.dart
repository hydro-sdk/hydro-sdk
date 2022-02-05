import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidElementReferenceInfo.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iJsonTransformable.dart';

part 'swidInterfaceElement.freezed.dart';
part 'swidInterfaceElement.g.dart';

@freezed
class SwidInterfaceElement
    with
        _$SwidInterfaceElement,
        HashKeyMixin<SwidInterfaceElement>,
        HashComparableMixin<SwidInterfaceElement>
    implements ISwidElementReferenceInfo, IJsonTransformable {
  SwidInterfaceElement._();

  factory SwidInterfaceElement({
    required final bool isShadowingParent,
    required final bool isClassReference,
  }) = _$SwidInterfaceElementCtor;

  factory SwidInterfaceElement.fromJson(final Map<String, dynamic> json) =>
      _$SwidInterfaceElementFromJson(json);

  factory SwidInterfaceElement.empty() => SwidInterfaceElement(
        isShadowingParent: false,
        isClassReference: false,
      );

  @override
  SwidInterfaceElement fromJson(final Map<String, dynamic> json) =>
      SwidInterfaceElement.fromJson(json);

  @override
  SwidInterfaceElement clone({
    final bool? isShadowingParent,
    final bool? isClassReference,
  }) =>
      SwidInterfaceElement(
        isShadowingParent: isShadowingParent ?? this.isShadowingParent,
        isClassReference: isClassReference ?? this.isClassReference,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield isShadowingParent.hashableParts;
    yield isClassReference.hashableParts;
  })();
}
