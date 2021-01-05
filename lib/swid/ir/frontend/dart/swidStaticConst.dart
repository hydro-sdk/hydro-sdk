import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidDoubleLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstBinaryExpression.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstPrefixedExpression.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStringLiteral.dart';

part 'swidStaticConst.freezed.dart';
part 'swidStaticConst.g.dart';

@freezed
abstract class SwidStaticConst with _$SwidStaticConst {
  factory SwidStaticConst.fromSwidBooleanLiteral(
          {@required SwidBooleanLiteral swidBooleanLiteral}) =
      _$FromSwidBooleanLiteral;

  factory SwidStaticConst.fromSwidStringLiteral(
          {@required SwidStringLiteral swidStringLiteral}) =
      _$FromSwidStringLiteral;

  factory SwidStaticConst.fromSwidIntegerLiteral(
          {@required SwidIntegerLiteral swidIntegerLiteral}) =
      _$FromSwidIntegerLiteral;

  factory SwidStaticConst.fromDoubleLiteral(
          {@required SwidDoubleLiteral swidDoubleLiteral}) =
      _$FromSwidDoubleLiteral;

  factory SwidStaticConst.fromSwidStaticConstFunctionInvocation(
          {@required
              SwidStaticConstFunctionInvocation
                  staticConstFunctionInvocation}) =
      _$FromSwidStaticConstFunctionInvocation;

  factory SwidStaticConst.fromSwidStaticConstFieldReference(
          {@required
              SwidStaticConstFieldReference swidStaticConstFieldReference}) =
      _$FromSwidStaticConstFieldReference;

  factory SwidStaticConst.fromSwidStaticConstPrefixedExpression(
          {@required
              SwidStaticConstPrefixedExpression
                  swidStaticConstPrefixedExpression}) =
      _$FromSwidStaticConstPrefixedExpression;

  factory SwidStaticConst.fromSwidStaticConstBinaryExpression(
          {@required
              SwidStaticConstBinaryExpression
                  swidStaticConstBinaryExpression}) =
      _$FromSwidStaticConstBinaryExpression;

  factory SwidStaticConst.fromJson(Map<String, dynamic> json) =>
      _$SwidStaticConstFromJson(json);
}
