import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstBinaryExpression.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';

String transformStaticConstBinaryExpressionToTs({
  required SwidStaticConstBinaryExpression swidStaticConstBinaryExpression,
  required SwidClass? parentClass,
  required String inexpressibleFunctionInvocationFallback,
  required SwidStaticConstFieldReferenceScopeResolver scopeResolver,
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
