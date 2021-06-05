

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformBooleanLiteralToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformDoubleLiteralToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformIntegerLiteralToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstBinaryExpressionToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstPrefixedExpressionToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstPrefixedIdentifierToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStringLiteralToTs.dart';

typedef String? SwidStaticConstFieldReferenceScopeResolver(
    SwidStaticConstFieldReference staticConstFieldReference);

String transformLiteralToTs(
        {required SwidStaticConst swidLiteral,
        required SwidClass parentClass,
        required String inexpressibleFunctionInvocationFallback,
        required SwidStaticConstFieldReferenceScopeResolver scopeResolver}) =>
    swidLiteral.when(
        fromSwidIntegerLiteral: (val) =>
            transformIntegerLiteralToTs(swidIntegerLiteral: val),
        fromSwidStringLiteral: (val) =>
            transformStringLiteralToTs(swidStringLiteral: val),
        fromDoubleLiteral: (val) =>
            transformDoubleLiteralToTs(swidDoubleLiteral: val),
        fromSwidBooleanLiteral: (val) =>
            transformBooleanLiteralToTs(swidBooleanLiteral: val),
        fromSwidStaticConstPrefixedExpression: (val) =>
            transformStaticConstPrefixedExpressionToTs(
              swidStaticConstPrefixedExpression: val,
              parentClass: parentClass,
              scopeResolver: scopeResolver,
              inexpressibleFunctionInvocationFallback:
                  inexpressibleFunctionInvocationFallback,
            ),
        fromSwidStaticConstBinaryExpression: (val) =>
            transformStaticConstBinaryExpressionToTs(
              swidStaticConstBinaryExpression: val,
              scopeResolver: scopeResolver,
              parentClass: parentClass,
              inexpressibleFunctionInvocationFallback:
                  inexpressibleFunctionInvocationFallback,
            ),
        fromSwidStaticConstFunctionInvocation: (val) =>
            transformStaticConstFunctionInvocation(
              swidStaticConstFunctionInvocation: val,
              parentClass: parentClass,
              scopeResolver: scopeResolver,
              inexpressibleFunctionInvocationFallback:
                  inexpressibleFunctionInvocationFallback,
            ),
        fromSwidStaticConstPrefixedIdentifier: (val) =>
            transformStaticConstPrefixedIdentifierToTs(
              staticConstPrefixedIdentifier: val,
              parentClass: parentClass,
              scopeResolver: scopeResolver,
              inexpressibleFunctionInvocationFallback:
                  inexpressibleFunctionInvocationFallback,
            ),
        fromSwidStaticConstFieldReference: (val) {
          var res = scopeResolver(val)!;
          return res;
        });
