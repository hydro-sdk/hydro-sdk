import 'package:hydro_sdk/swid/ir/dart/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformBooleanLiteralToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformIntegerLiteralToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStringLiteralToTs.dart';
import 'package:meta/meta.dart';

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
        fromSwidBooleanLiteral: (val) =>
            transformBooleanLiteralToTs(swidBooleanLiteral: val),
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
