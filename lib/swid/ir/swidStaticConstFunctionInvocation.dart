import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hydro_sdk/swid/ir/swidLiteral.dart';

part 'swidStaticConstFunctionInvocation.g.dart';

@JsonSerializable()
class SwidStaticConstFunctionInvocation implements SwidLiteral {
  final String value;
  final List<SwidLiteral> normalParameters;
  final Map<String, SwidLiteral> namedParameters;
  final bool isConstructorInvocation;

  SwidStaticConstFunctionInvocation({
    @required this.value,
    @required this.normalParameters,
    @required this.namedParameters,
    @required this.isConstructorInvocation,
  });

  Map<String, dynamic> toJson() =>
      _$SwidStaticConstFunctionInvocationToJson(this);

  factory SwidStaticConstFunctionInvocation.fromJson(
          Map<String, dynamic> json) =>
      _$SwidStaticConstFunctionInvocationFromJson(json);
}
