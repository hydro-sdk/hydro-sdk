import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidDoubleLiteral.freezed.dart';
part 'swidDoubleLiteral.g.dart';

@freezed
class SwidDoubleLiteral
    with
        _$SwidDoubleLiteral,
        HashKeyMixin<SwidDoubleLiteral>,
        HashComparableMixin<SwidDoubleLiteral>
    implements
        ICopyable<SwidDoubleLiteral,
            $SwidDoubleLiteralCopyWith<SwidDoubleLiteral>> {
  SwidDoubleLiteral._();
  factory SwidDoubleLiteral({
    required final String value,
  }) = _$Data;

  factory SwidDoubleLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidDoubleLiteralFromJson(json);

  factory SwidDoubleLiteral.clone({
    required final SwidDoubleLiteral swidDoubleLiteral,
    final String? value,
  }) =>
      SwidDoubleLiteral(
        value: value ?? swidDoubleLiteral.value,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* value.hashableParts;
  })();

  @override
  SwidDoubleLiteral clone({
    final String? value,
  }) =>
      SwidDoubleLiteral.clone(
        swidDoubleLiteral: this,
        value: value,
      );
}
