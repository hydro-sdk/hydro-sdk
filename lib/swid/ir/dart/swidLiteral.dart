import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/dart/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/ir/dart/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStringLiteral.dart';
import 'package:meta/meta.dart';

part 'swidLiteral.freezed.dart';
part 'swidLiteral.g.dart';

@freezed
abstract class SwidLiteral with _$SwidLiteral {
  factory SwidLiteral.fromSwidBooleanLiteral(
          {@required SwidBooleanLiteral swidBooleanLiteral}) =
      _$FromSwidBooleanLiteral;

  factory SwidLiteral.fromSwidStringLiteral(
          {@required SwidStringLiteral swidStringLiteral}) =
      _$FromSwidStringLiteral;

  factory SwidLiteral.fromSwidIntegerLiteral(
          {@required SwidIntegerLiteral swidIntegerLiteral}) =
      _$FromSwidIntegerLiteral;

  factory SwidLiteral.fromSwidStaticConstFunctionInvocation(
          {@required
              SwidStaticConstFunctionInvocation
                  staticConstFunctionInvocation}) =
      _$FromSwidStaticConstFunctionInvocation;

  factory SwidLiteral.fromSwidStaticConstFieldReference(
          {@required
              SwidStaticConstFieldReference swidStaticConstFieldReference}) =
      _$FromSwidStaticConstFieldReference;

  factory SwidLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidLiteralFromJson(json);
}
