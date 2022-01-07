import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/tsFunctionDefaultNamedPropsObjectName.dart';
import 'package:hydro_sdk/swid/backend/ts/tsFunctionInvocation.dart';
import 'package:hydro_sdk/swid/backend/ts/tsFunctionInvocationNamedParameters.dart';
import 'package:hydro_sdk/swid/backend/ts/tsFunctionInvocationNamedParametersSpread.dart';
import 'package:hydro_sdk/swid/backend/ts/tsFunctionInvocationPositionalParameters.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsFunctionSelfBindingInvocation.freezed.dart';

@freezed
class TsFunctionSelfBindingInvocation
    with
        _$TsFunctionSelfBindingInvocation,
        HashKeyMixin<TsFunctionSelfBindingInvocation>,
        HashComparableMixin<TsFunctionSelfBindingInvocation>,
        SwarsTransformMixin<
            TsFunctionSelfBindingInvocation,
            $TsFunctionSelfBindingInvocationCopyWith<
                TsFunctionSelfBindingInvocation>,
            String>,
        SwarsTermStringResultMixin {
  TsFunctionSelfBindingInvocation._();

  factory TsFunctionSelfBindingInvocation({
    required final SwidFunctionType swidFunctionType,
    required final String functionReference,
  }) = _$TsFunctionSelfBindingInvocationCtor;

  @override
  String get cacheGroup => "tsFunctionSelfBindingInvocation";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidFunctionType.hashKey.hashableParts;
    yield* functionReference.hashableParts;
  }

  @override
  TsFunctionSelfBindingInvocation clone({
    final SwidFunctionType? swidFunctionType,
    final String? functionReference,
  }) =>
      TsFunctionSelfBindingInvocation(
        swidFunctionType: swidFunctionType ?? this.swidFunctionType,
        functionReference: functionReference ?? this.functionReference,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        pipeline.reduceFromTerm(
          TsFunctionInvocation(
            functionReference: functionReference,
            tsFunctionInvocationPositionalParameters:
                TsFunctionInvocationPositionalParameters(
              positionalReferences: <String?>[
                ...swidFunctionType.normalParameterNames,
                ...swidFunctionType.optionalParameterNames.toList(),
                (swidFunctionType.namedDefaultParameters.entries.isEmpty &&
                        swidFunctionType.namedParameterTypes.entries.isNotEmpty
                    ? "props"
                    : null)
              ].whereNotNull().toList(),
            ),
            tsFunctionInvocationNamedParameters:
                swidFunctionType.namedDefaultParameters.entries.isNotEmpty
                    ? [
                        TsFunctionInvocationNamedParameters.fromSpread(
                          tsFunctionInvocationNamedParametersSpread:
                              TsFunctionInvocationNamedParametersSpread(
                            references: [
                              pipeline.reduceFromTerm(
                                TsFunctionDefaultNamedPropsObjectName(
                                    swidFunctionType: swidFunctionType),
                              ),
                              "props"
                            ],
                          ),
                        )
                      ]
                    : [],
          ),
        ),
      );
}
