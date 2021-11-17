import 'package:code_builder/code_builder.dart' show DartEmitter, refer;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';

import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/removeNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'superMethodInvocation.freezed.dart';

@freezed
class SuperMethodInvocation
    with
        _$SuperMethodInvocation,
        HashKeyMixin<SuperMethodInvocation>,
        HashComparableMixin<SuperMethodInvocation>,
        SwarsTransformMixin<SuperMethodInvocation,
            $SuperMethodInvocationCopyWith<SuperMethodInvocation>, String>,
        SwarsTermStringResultMixin {
  SuperMethodInvocation._();

  factory SuperMethodInvocation({
    required final SwidFunctionType swidFunctionType,
  }) = _$SuperMethodInvocationCtor;

  @override
  String get cacheGroup => "superMethodInvocation";

  @override
  late final List<int> hashableParts = [
    ...swidFunctionType.hashableParts,
  ];

  @override
  SuperMethodInvocation clone({
    final SwidFunctionType? swidFunctionType,
  }) =>
      SuperMethodInvocation(
        swidFunctionType: swidFunctionType ?? this.swidFunctionType,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        swidFunctionType.declarationModifiers.hasMustCallSuper
            ? [
                refer("super")
                    .property(
                      removeNullabilitySuffix(
                        str: removeTypeArguments(
                          str: swidFunctionType.name,
                        ),
                      ),
                    )
                    .call(
                      [
                        ...swidFunctionType.normalParameterNames,
                        ...swidFunctionType.optionalParameterNames,
                      ].map(
                        (x) => refer(x),
                      ),
                      Map.fromEntries(
                        [
                          ...swidFunctionType.namedParameterTypes.entries,
                        ].map(
                          (x) => MapEntry(
                            x.key,
                            refer(x.key),
                          ),
                        ),
                      ),
                    )
                    .statement
                    .accept(
                      DartEmitter(
                        useNullSafetySyntax: true,
                      ),
                    )
                    .toString(),
              ].join("")
            : "",
      );
}
