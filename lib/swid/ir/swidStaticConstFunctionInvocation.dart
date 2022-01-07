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
        staticType: staticType ?? swidStaticConstFunctionInvocation.staticType,
        normalParameters: normalParameters ??
            swidStaticConstFunctionInvocation.normalParameters,
        namedParameters: namedParameters ??
            swidStaticConstFunctionInvocation.namedParameters,
        isConstructorInvocation: isConstructorInvocation ??
            swidStaticConstFunctionInvocation.isConstructorInvocation,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* value.hashableParts;
    yield* staticType.hashKey.hashableParts;
    yield* normalParameters.hashableParts;
    yield* namedParameters.hashableParts;
    yield [
      ...isConstructorInvocation.hashableParts,
    ];
  })();

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
