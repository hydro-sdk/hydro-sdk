import 'package:freezed_annotation/freezed_annotation.dart';
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
    implements IJsonTransformable {
  SwidInterfaceElement._();

  factory SwidInterfaceElement({
    required final bool isShadowingParent,
  }) = _$SwidInterfaceElementCtor;

  factory SwidInterfaceElement.fromJson(final Map<String, dynamic> json) =>
      _$SwidInterfaceElementFromJson(json);

  @override
  SwidInterfaceElement fromJson(final Map<String, dynamic> json) =>
      SwidInterfaceElement.fromJson(json);

  @override
  SwidInterfaceElement clone({
    final bool? isShadowingParent,
  }) =>
      SwidInterfaceElement(
        isShadowingParent: isShadowingParent ?? this.isShadowingParent,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield isShadowingParent.hashableParts;
  })();
}
