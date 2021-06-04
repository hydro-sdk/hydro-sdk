import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

part 'swidStaticConstFunctionInvocation.freezed.dart';
part 'swidStaticConstFunctionInvocation.g.dart';

@freezed
abstract class SwidStaticConstFunctionInvocation
    with _$SwidStaticConstFunctionInvocation {
  const factory SwidStaticConstFunctionInvocation({
    required String value,
    required SwidType staticType,
    required List<SwidStaticConst?> normalParameters,
    required Map<String?, SwidStaticConst?> namedParameters,
    required bool isConstructorInvocation,
  }) = _$Data;

  factory SwidStaticConstFunctionInvocation.fromJson(
          Map<String, dynamic> json) =>
      _$SwidStaticConstFunctionInvocationFromJson(json);
}
