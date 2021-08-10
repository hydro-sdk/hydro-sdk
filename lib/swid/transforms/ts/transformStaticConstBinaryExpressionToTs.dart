import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstBinaryExpression.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';

String transformStaticConstBinaryExpressionToTs({
  required final SwidStaticConstBinaryExpression
      swidStaticConstBinaryExpression,
  required final SwidClass? parentClass,
  required final String inexpressibleFunctionInvocationFallback,
  required final SwidStaticConstFieldReferenceScopeResolver scopeResolver,
}) =>
    transformLiteralToTs(
      swidLiteral: swidStaticConstBinaryExpression.leftOperand,
      scopeResolver: scopeResolver,
      parentClass: parentClass,
      inexpressibleFunctionInvocationFallback:
          inexpressibleFunctionInvocationFallback,
    ) +
    swidStaticConstBinaryExpression.operator +
    transformLiteralToTs(
      swidLiteral: swidStaticConstBinaryExpression.rightOperand,
      scopeResolver: scopeResolver,
      parentClass: parentClass,
      inexpressibleFunctionInvocationFallback:
          inexpressibleFunctionInvocationFallback,
    );
