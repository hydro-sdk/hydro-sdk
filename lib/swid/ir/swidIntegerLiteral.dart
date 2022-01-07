import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidIntegerLiteral.freezed.dart';
part 'swidIntegerLiteral.g.dart';

@freezed
class SwidIntegerLiteral
    with
        _$SwidIntegerLiteral,
        HashKeyMixin<SwidIntegerLiteral>,
        HashComparableMixin<SwidIntegerLiteral>
    implements
        ICopyable<SwidIntegerLiteral,
            $SwidIntegerLiteralCopyWith<SwidIntegerLiteral>> {
  SwidIntegerLiteral._();

  factory SwidIntegerLiteral({
    required final String value,
  }) = _$Data;

  factory SwidIntegerLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidIntegerLiteralFromJson(json);

  factory SwidIntegerLiteral.clone({
    required final SwidIntegerLiteral swidIntegerLiteral,
    final String? value,
  }) =>
      SwidIntegerLiteral(
        value: value ?? swidIntegerLiteral.value,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* value.hashableParts;
  })();

  @override
  SwidIntegerLiteral clone({
    final String? value,
  }) =>
      SwidIntegerLiteral.clone(
        swidIntegerLiteral: this,
        value: value,
      );
}
