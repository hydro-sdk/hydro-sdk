import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/dart/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/ir/dart/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStringLiteral.dart';
import 'package:meta/meta.dart';

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

  factory SwidStaticConst.fromSwidStaticConstFunctionInvocation(
          {@required
              SwidStaticConstFunctionInvocation
                  staticConstFunctionInvocation}) =
      _$FromSwidStaticConstFunctionInvocation;

  factory SwidStaticConst.fromSwidStaticConstFieldReference(
          {@required
              SwidStaticConstFieldReference swidStaticConstFieldReference}) =
      _$FromSwidStaticConstFieldReference;

  factory SwidStaticConst.fromJson(Map<String, dynamic> json) =>
      _$SwidStaticConstFromJson(json);
}
