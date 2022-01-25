import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidStaticConstPropertyAccess.freezed.dart';
part 'swidStaticConstPropertyAccess.g.dart';

@freezed
class SwidStaticConstPropertyAccess
    with
        _$SwidStaticConstPropertyAccess,
        HashKeyMixin<SwidStaticConstPropertyAccess>,
        HashComparableMixin<SwidStaticConstPropertyAccess>
    implements
        ICopyable<
            SwidStaticConstPropertyAccess,
            $SwidStaticConstPropertyAccessCopyWith<
                SwidStaticConstPropertyAccess>> {
  SwidStaticConstPropertyAccess._();

  factory SwidStaticConstPropertyAccess({
    required final String receiver,
    required final String property,
    required final SwidType staticType,
  }) = _$SwidStaticConstPropertyAccessCtor;

  factory SwidStaticConstPropertyAccess.fromJson(
          final Map<String, dynamic> json) =>
      _$SwidStaticConstPropertyAccessFromJson(json);

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* receiver.hashableParts;
    yield* property.hashableParts;
    yield* staticType.hashableParts;
  })();

  @override
  SwidStaticConstPropertyAccess clone({
    final String? receiver,
    final String? property,
    final SwidType? staticType,
  }) =>
      SwidStaticConstPropertyAccess(
        receiver: receiver ?? this.receiver,
        property: property ?? this.property,
        staticType: staticType ?? this.staticType,
      );
}
