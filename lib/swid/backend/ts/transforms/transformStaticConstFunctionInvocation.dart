import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformLiteralToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformNamedParametersToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformNormalParametersToTs.dart';
import 'package:hydro_sdk/swid/ir/analyses/isInexpressibleStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsNonUniqueTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/unHashableMixin.dart';

part 'transformStaticConstFunctionInvocation.freezed.dart';

@freezed
class TransformStaticConstFunctionInvocation
    with
        _$TransformStaticConstFunctionInvocation,
        HashKeyMixin<TransformStaticConstFunctionInvocation>,
        HashComparableMixin<TransformStaticConstFunctionInvocation>,
        UnhashableMixin<TransformStaticConstFunctionInvocation>,
        SwarsNonUniqueTermMixin<
            TransformStaticConstFunctionInvocation,
            $TransformStaticConstFunctionInvocationCopyWith<
                TransformStaticConstFunctionInvocation>,
            String>,
        SwarsTransformMixin<
            TransformStaticConstFunctionInvocation,
            $TransformStaticConstFunctionInvocationCopyWith<
                TransformStaticConstFunctionInvocation>,
            String>,
        SwarsTermStringResultMixin {
  TransformStaticConstFunctionInvocation._();

  factory TransformStaticConstFunctionInvocation({
    required final SwidStaticConstFunctionInvocation
        swidStaticConstFunctionInvocation,
    required final SwidClass? parentClass,
    required final String inexpressibleFunctionInvocationFallback,
    required final SwidStaticConstFieldReferenceScopeResolver scopeResolver,
  }) = _$TransformStaticConstFunctionInvocationCtor;

  @override
  TransformStaticConstFunctionInvocation clone({
    final SwidStaticConstFunctionInvocation? swidStaticConstFunctionInvocation,
    final SwidClass? parentClass,
    final String? inexpressibleFunctionInvocationFallback,
    final SwidStaticConstFieldReferenceScopeResolver? scopeResolver,
  }) =>
      TransformStaticConstFunctionInvocation(
        swidStaticConstFunctionInvocation: swidStaticConstFunctionInvocation ??
            this.swidStaticConstFunctionInvocation,
        parentClass: parentClass ?? this.parentClass,
        inexpressibleFunctionInvocationFallback:
            inexpressibleFunctionInvocationFallback ??
                this.inexpressibleFunctionInvocationFallback,
        scopeResolver: scopeResolver ?? this.scopeResolver,
      );

  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) {
    var normalParameters = pipeline.reduceFromTerm(
      TransformNormalParametersToTs(
        swidLiterals: swidStaticConstFunctionInvocation.normalParameters,
        parentClass: parentClass,
        scopeResolver: scopeResolver,
        inexpressibleFunctionInvocationFallback:
            inexpressibleFunctionInvocationFallback,
      ),
    );

    var res = "";
    if (!pipeline.reduceFromTerm(
      IsInexpressibleStaticConst(
        parentClass: parentClass,
        swidStaticConst: SwidStaticConst.fromSwidStaticConstFunctionInvocation(
          staticConstFunctionInvocation: swidStaticConstFunctionInvocation,
        ),
      ),
    )) {
      res = swidStaticConstFunctionInvocation.isConstructorInvocation
          ? "new "
          : "";

      res += swidStaticConstFunctionInvocation.value + "(";

      if (normalParameters.isNotEmpty) {
        res += normalParameters;
      }

      var namedParameters = pipeline.reduceFromTerm(
        TransformNamedParametersToTs(
          namedParameters: swidStaticConstFunctionInvocation.namedParameters,
          parentClass: parentClass,
          scopeResolver: scopeResolver,
          inexpressibleFunctionInvocationFallback:
              inexpressibleFunctionInvocationFallback,
        ),
      );

      if ((normalParameters.isNotEmpty) && (namedParameters.isNotEmpty)) {
        res += ",";
      }

      if (namedParameters.isNotEmpty) {
        res += namedParameters;
      }

      res += ")";
    } else {
      res = inexpressibleFunctionInvocationFallback + "()";
    }

    return SwarsTermResult.fromString(
      res,
    );
  }
}
