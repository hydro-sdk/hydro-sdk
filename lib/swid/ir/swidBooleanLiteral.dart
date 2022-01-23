import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidBooleanLiteral.freezed.dart';
part 'swidBooleanLiteral.g.dart';

@freezed
class SwidBooleanLiteral
    with
        _$SwidBooleanLiteral,
        HashKeyMixin<SwidBooleanLiteral>,
        HashComparableMixin<SwidBooleanLiteral>
    implements
        ICopyable<SwidBooleanLiteral,
            $SwidBooleanLiteralCopyWith<SwidBooleanLiteral>> {
  SwidBooleanLiteral._();

  factory SwidBooleanLiteral({
    required final String value,
  }) = _$Data;

  factory SwidBooleanLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidBooleanLiteralFromJson(json);

  factory SwidBooleanLiteral._clone({
    required final SwidBooleanLiteral swidBooleanLiteral,
    final String? value,
  }) =>
      SwidBooleanLiteral(
        value: value ?? swidBooleanLiteral.value,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* value.hashableParts;
  })();

  @override
  SwidBooleanLiteral clone() => SwidBooleanLiteral._clone(
        swidBooleanLiteral: this,
        value: value,
      );
}
