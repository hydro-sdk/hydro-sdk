import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstPrefixedExpression.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';

String transformStaticConstPrefixedExpressionToTs({
  required final SwidStaticConstPrefixedExpression
      swidStaticConstPrefixedExpression,
  required final SwidClass? parentClass,
  required final String inexpressibleFunctionInvocationFallback,
  required final SwidStaticConstFieldReferenceScopeResolver scopeResolver,
}) =>
    swidStaticConstPrefixedExpression.prefix +
    transformLiteralToTs(
      swidLiteral: swidStaticConstPrefixedExpression.expression,
      parentClass: parentClass,
      scopeResolver: scopeResolver,
      inexpressibleFunctionInvocationFallback:
          inexpressibleFunctionInvocationFallback,
    );
