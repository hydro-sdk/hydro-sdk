import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

part 'swidStaticConstFunctionInvocation.freezed.dart';
part 'swidStaticConstFunctionInvocation.g.dart';

@freezed
class SwidStaticConstFunctionInvocation
    with _$SwidStaticConstFunctionInvocation {
  const factory SwidStaticConstFunctionInvocation({
    required String value,
    required SwidType staticType,
    required List<SwidStaticConst> normalParameters,
    required Map<String, SwidStaticConst> namedParameters,
    required bool isConstructorInvocation,
  }) = _$Data;

  factory SwidStaticConstFunctionInvocation.fromJson(
          Map<String, dynamic> json) =>
      _$SwidStaticConstFunctionInvocationFromJson(json);

  factory SwidStaticConstFunctionInvocation.clone({
    required SwidStaticConstFunctionInvocation
        swidStaticConstFunctionInvocation,
    String? value,
    SwidType? staticType,
    List<SwidStaticConst>? normalParameters,
    Map<String, SwidStaticConst>? namedParameters,
    bool? isConstructorInvocation,
  }) =>
      SwidStaticConstFunctionInvocation(
        value: value ?? swidStaticConstFunctionInvocation.value,
        staticType: staticType ??
            SwidType.clone(
              swidType: swidStaticConstFunctionInvocation.staticType,
            ),
        normalParameters: normalParameters ??
            List.from(swidStaticConstFunctionInvocation.normalParameters
                .map((x) => SwidStaticConst.clone(
                      swidStaticConst: x,
                    ))
                .toList()),
        namedParameters: namedParameters ??
            Map.fromEntries(
              swidStaticConstFunctionInvocation.namedParameters.entries
                  .map(
                    (x) => MapEntry(
                      x.key,
                      SwidStaticConst.clone(
                        swidStaticConst: x.value,
                      ),
                    ),
                  )
                  .toList(),
            ),
        isConstructorInvocation: isConstructorInvocation ??
            swidStaticConstFunctionInvocation.isConstructorInvocation,
      );
}
