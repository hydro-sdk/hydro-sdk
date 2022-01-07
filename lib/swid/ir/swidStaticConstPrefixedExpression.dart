import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidStaticConstPrefixedExpression.freezed.dart';
part 'swidStaticConstPrefixedExpression.g.dart';

@freezed
class SwidStaticConstPrefixedExpression
    with
        _$SwidStaticConstPrefixedExpression,
        HashKeyMixin<SwidStaticConstPrefixedExpression>,
        HashComparableMixin<SwidStaticConstPrefixedExpression>
    implements
        ICopyable<
            SwidStaticConstPrefixedExpression,
            $SwidStaticConstPrefixedExpressionCopyWith<
                SwidStaticConstPrefixedExpression>> {
  SwidStaticConstPrefixedExpression._();

  factory SwidStaticConstPrefixedExpression({
    required final String prefix,
    required final SwidStaticConst expression,
  }) = _$Data;

  factory SwidStaticConstPrefixedExpression.fromJson(
          Map<String, dynamic> json) =>
      _$SwidStaticConstPrefixedExpressionFromJson(json);

  factory SwidStaticConstPrefixedExpression.clone({
    required final SwidStaticConstPrefixedExpression
        swidStaticConstPrefixedExpression,
    final String? prefix,
    final SwidStaticConst? expression,
  }) =>
      SwidStaticConstPrefixedExpression(
        prefix: prefix ?? swidStaticConstPrefixedExpression.prefix,
        expression: expression ?? swidStaticConstPrefixedExpression.expression,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* prefix.hashableParts;
    yield* expression.hashKey.hashableParts;
  })();

  @override
  SwidStaticConstPrefixedExpression clone({
    final String? prefix,
    final SwidStaticConst? expression,
  }) =>
      SwidStaticConstPrefixedExpression.clone(
        swidStaticConstPrefixedExpression: this,
        prefix: prefix,
        expression: expression,
      );
}
