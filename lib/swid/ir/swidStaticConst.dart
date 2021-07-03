import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidDoubleLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstBinaryExpression.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstIdentifier.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstListLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstPrefixedExpression.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstPrefixedIdentifier.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';

part 'swidStaticConst.freezed.dart';
part 'swidStaticConst.g.dart';

@freezed
class SwidStaticConst with _$SwidStaticConst {
  const factory SwidStaticConst.fromSwidBooleanLiteral({
    required SwidBooleanLiteral swidBooleanLiteral,
  }) = _$FromSwidBooleanLiteral;

  const factory SwidStaticConst.fromSwidStringLiteral({
    required SwidStringLiteral swidStringLiteral,
  }) = _$FromSwidStringLiteral;

  const factory SwidStaticConst.fromSwidIntegerLiteral({
    required SwidIntegerLiteral swidIntegerLiteral,
  }) = _$FromSwidIntegerLiteral;

  const factory SwidStaticConst.fromDoubleLiteral({
    required SwidDoubleLiteral swidDoubleLiteral,
  }) = _$FromSwidDoubleLiteral;

  const factory SwidStaticConst.fromSwidStaticConstFunctionInvocation({
    required SwidStaticConstFunctionInvocation staticConstFunctionInvocation,
  }) = _$FromSwidStaticConstFunctionInvocation;

  const factory SwidStaticConst.fromSwidStaticConstFieldReference({
    required SwidStaticConstFieldReference swidStaticConstFieldReference,
  }) = _$FromSwidStaticConstFieldReference;

  const factory SwidStaticConst.fromSwidStaticConstPrefixedExpression({
    required SwidStaticConstPrefixedExpression
        swidStaticConstPrefixedExpression,
  }) = _$FromSwidStaticConstPrefixedExpression;

  const factory SwidStaticConst.fromSwidStaticConstBinaryExpression({
    required SwidStaticConstBinaryExpression swidStaticConstBinaryExpression,
  }) = _$FromSwidStaticConstBinaryExpression;

  const factory SwidStaticConst.fromSwidStaticConstPrefixedIdentifier({
    required SwidStaticConstPrefixedIdentifier staticConstPrefixedIdentifier,
  }) = _$FromSwidStaticConstPrefixedIdentifier;

  const factory SwidStaticConst.fromSwidStaticConstIdentifier({
    required SwidStaticConstIdentifier staticConstIdentifier,
  }) = _$FromSwidStaticConstIdentifier;

  const factory SwidStaticConst.fromSwidStaticConstListLiteral({
    required SwidStaticConstListLiteral staticConstListLiteral,
  }) = _$FromSwidStaticConstListLiteral;

  factory SwidStaticConst.fromJson(Map<String, dynamic> json) =>
      _$SwidStaticConstFromJson(json);
}
