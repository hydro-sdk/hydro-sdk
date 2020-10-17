import 'package:hydro_sdk/swid/ir/dart/swidLiteral.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformBooleanLiteralToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformIntegerLiteralToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStringLiteralToTs.dart';
import 'package:meta/meta.dart';

String transformLiteralToTs({@required SwidLiteral swidLiteral}) =>
    swidLiteral.when(
        fromSwidIntegerLiteral: (val) =>
            transformIntegerLiteralToTs(swidIntegerLiteral: val),
        fromSwidStringLiteral: (val) =>
            transformStringLiteralToTs(swidStringLiteral: val),
        fromSwidBooleanLiteral: (val) =>
            transformBooleanLiteralToTs(swidBooleanLiteral: val),
        fromSwidStaticConstFunctionInvocation: (val) =>
            transformStaticConstFunctionInvocation(
                swidStaticConstFunctionInvocation: val));
