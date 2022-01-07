import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidStringLiteral.freezed.dart';
part 'swidStringLiteral.g.dart';

@freezed
class SwidStringLiteral
    with
        _$SwidStringLiteral,
        HashKeyMixin<SwidStringLiteral>,
        HashComparableMixin<SwidStringLiteral>
    implements
        ICopyable<SwidStringLiteral,
            $SwidStringLiteralCopyWith<SwidStringLiteral>> {
  SwidStringLiteral._();

  factory SwidStringLiteral({
    required final String value,
  }) = _$Data;

  factory SwidStringLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidStringLiteralFromJson(json);

  factory SwidStringLiteral.clone({
    required final SwidStringLiteral swidStringLiteral,
    final String? value,
  }) =>
      SwidStringLiteral(
        value: value ?? swidStringLiteral.value,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* value.hashableParts;
  })();

  @override
  SwidStringLiteral clone({
    final String? value,
  }) =>
      SwidStringLiteral.clone(
        swidStringLiteral: this,
        value: value,
      );
}
