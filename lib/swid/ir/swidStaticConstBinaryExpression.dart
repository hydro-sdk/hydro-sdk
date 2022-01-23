import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidStaticConstBinaryExpression.freezed.dart';
part 'swidStaticConstBinaryExpression.g.dart';

@freezed
class SwidStaticConstBinaryExpression
    with
        _$SwidStaticConstBinaryExpression,
        HashKeyMixin<SwidStaticConstBinaryExpression>,
        HashComparableMixin<SwidStaticConstBinaryExpression>
    implements
        ICopyable<
            SwidStaticConstBinaryExpression,
            $SwidStaticConstBinaryExpressionCopyWith<
                SwidStaticConstBinaryExpression>> {
  SwidStaticConstBinaryExpression._();

  factory SwidStaticConstBinaryExpression({
    required final String operator,
    required final SwidStaticConst leftOperand,
    required final SwidStaticConst rightOperand,
  }) = _$Data;

  factory SwidStaticConstBinaryExpression.fromJson(Map<String, dynamic> json) =>
      _$SwidStaticConstBinaryExpressionFromJson(json);

  factory SwidStaticConstBinaryExpression.clone({
    required final SwidStaticConstBinaryExpression
        swidStaticConstBinaryExpression,
    final String? operator,
    final SwidStaticConst? leftOperand,
    final SwidStaticConst? rightOperand,
  }) =>
      SwidStaticConstBinaryExpression(
        operator: operator ?? swidStaticConstBinaryExpression.operator,
        leftOperand: leftOperand ?? swidStaticConstBinaryExpression.leftOperand,
        rightOperand:
            rightOperand ?? swidStaticConstBinaryExpression.rightOperand,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* operator.hashableParts;
    yield* leftOperand.hashKey.hashableParts;
    yield* rightOperand.hashKey.hashableParts;
  })();

  @override
  SwidStaticConstBinaryExpression clone({
    final String? operator,
    final SwidStaticConst? leftOperand,
    final SwidStaticConst? rightOperand,
  }) =>
      SwidStaticConstBinaryExpression.clone(
        swidStaticConstBinaryExpression: this,
        operator: operator,
        leftOperand: leftOperand,
        rightOperand: rightOperand,
      );
}
