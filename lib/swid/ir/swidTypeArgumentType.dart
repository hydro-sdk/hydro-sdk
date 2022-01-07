import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidElement.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';
import 'package:hydro_sdk/swid/util/iJsonTransformable.dart';

part 'swidTypeArgumentType.freezed.dart';
part 'swidTypeArgumentType.g.dart';

@freezed
class SwidTypeArgumentType
    with
        _$SwidTypeArgumentType,
        HashKeyMixin<SwidTypeArgumentType>,
        HashComparableMixin<SwidTypeArgumentType>
    implements
        ICopyable<SwidTypeArgumentType,
            $SwidTypeArgumentTypeCopyWith<SwidTypeArgumentType>>,
        IJsonTransformable {
  SwidTypeArgumentType._();

  factory SwidTypeArgumentType({
    required final SwidType type,
    required final SwidElement? element,
  }) = _$SwidTypeArgumentTypeCtor;

  factory SwidTypeArgumentType.fromJson(Map<String, dynamic> json) =>
      _$SwidTypeArgumentTypeFromJson(json);

  @override
  SwidTypeArgumentType fromJson(Map<String, dynamic> json) =>
      SwidTypeArgumentType.fromJson(json);

  factory SwidTypeArgumentType.clone({
    required final SwidTypeArgumentType swidTypeArgumentType,
    final SwidType? type,
    final SwidElement? element,
  }) =>
      SwidTypeArgumentType(
        type: type ?? swidTypeArgumentType.type,
        element: element ?? swidTypeArgumentType.element,
      );

  @override
  SwidTypeArgumentType clone({
    final SwidType? type,
    final SwidElement? element,
  }) =>
      SwidTypeArgumentType.clone(
        swidTypeArgumentType: this,
        type: type,
        element: element,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* type.hashKey.hashableParts;
    yield* element?.hashKey.hashableParts ?? [];
  })();
}
