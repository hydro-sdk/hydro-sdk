import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStaticConstPrefixedExpression.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';

String transformStaticConstPrefixedExpressionToTs(
        {@required
            SwidStaticConstPrefixedExpression swidStaticConstPrefixedExpression,
        @required
            SwidClass parentClass,
        @required
            String inexpressibleFunctionInvocationFallback,
        @required
            SwidStaticConstFieldReferenceScopeResolver scopeResolver}) =>
    swidStaticConstPrefixedExpression.prefix +
    transformLiteralToTs(
      swidLiteral: swidStaticConstPrefixedExpression.expression,
      parentClass: parentClass,
      scopeResolver: scopeResolver,
      inexpressibleFunctionInvocationFallback:
          inexpressibleFunctionInvocationFallback,
    );
