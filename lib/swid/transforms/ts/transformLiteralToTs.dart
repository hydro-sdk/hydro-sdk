import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformBooleanLiteralToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformDoubleLiteralToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformIntegerLiteralToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstPrefixedExpressionToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStringLiteralToTs.dart';

typedef String SwidStaticConstFieldReferenceScopeResolver(
    SwidStaticConstFieldReference staticConstFieldReference);

String transformLiteralToTs(
        {@required SwidStaticConst swidLiteral,
        @required SwidStaticConstFieldReferenceScopeResolver scopeResolver}) =>
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
                scopeResolver: scopeResolver),
        fromSwidStaticConstFunctionInvocation: (val) =>
            transformStaticConstFunctionInvocation(
              swidStaticConstFunctionInvocation: val,
              scopeResolver: scopeResolver,
            ),
        fromSwidStaticConstFieldReference: (val) {
          var res = scopeResolver(val);
          assert(res != null);
          return res;
        });
