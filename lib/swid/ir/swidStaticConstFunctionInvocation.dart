import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidStaticConstFunctionInvocation.freezed.dart';
part 'swidStaticConstFunctionInvocation.g.dart';

@freezed
class SwidStaticConstFunctionInvocation
    with
        _$SwidStaticConstFunctionInvocation,
        HashKeyMixin<SwidStaticConstFunctionInvocation>,
        HashComparableMixin<SwidStaticConstFunctionInvocation>
    implements
        ICopyable<
            SwidStaticConstFunctionInvocation,
            $SwidStaticConstFunctionInvocationCopyWith<
                SwidStaticConstFunctionInvocation>> {
  SwidStaticConstFunctionInvocation._();

  factory SwidStaticConstFunctionInvocation({
    required final String value,
    required final SwidType staticType,
    required final List<SwidStaticConst> normalParameters,
    required final Map<String, SwidStaticConst> namedParameters,
    required final bool isConstructorInvocation,
  }) = _$Data;

  factory SwidStaticConstFunctionInvocation.fromJson(
          Map<String, dynamic> json) =>
      _$SwidStaticConstFunctionInvocationFromJson(json);

  factory SwidStaticConstFunctionInvocation.clone({
    required final SwidStaticConstFunctionInvocation
        swidStaticConstFunctionInvocation,
    final String? value,
    final SwidType? staticType,
    final List<SwidStaticConst>? normalParameters,
    final Map<String, SwidStaticConst>? namedParameters,
    final bool? isConstructorInvocation,
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

  @override
  List<int> get hashableParts => [
        ...value.hashableParts,
        ...staticType.hashableParts,
        ...normalParameters.hashableParts,
        ...namedParameters.hashableParts,
        ...isConstructorInvocation.hashableParts,
      ];

  @override
  SwidStaticConstFunctionInvocation clone({
    final String? value,
    final SwidType? staticType,
    final List<SwidStaticConst>? normalParameters,
    final Map<String, SwidStaticConst>? namedParameters,
    final bool? isConstructorInvocation,
  }) =>
      SwidStaticConstFunctionInvocation.clone(
        swidStaticConstFunctionInvocation: this,
        value: value,
        staticType: staticType,
        normalParameters: normalParameters,
        namedParameters: namedParameters,
        isConstructorInvocation: isConstructorInvocation,
      );
}
