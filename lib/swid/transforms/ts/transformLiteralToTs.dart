import 'package:hydro_sdk/swid/ir/narrowSwidLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidLiteral.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformIntegerLiteralToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStringLiteralToTs.dart';
import 'package:meta/meta.dart';

String transformLiteralToTs({@required SwidLiteral swidLiteral}) =>
    narrowSwidLiteral<String>(
        swidLiteral: swidLiteral,
        onSwidIntegerLiteral: (val) =>
            transformIntegerLiteralToTs(swidIntegerLiteral: val),
        onSwidStringLiteral: (val) =>
            transformStringLiteralToTs(swidStringLiteral: val),
        onSwidStaticConstFunctionInvocation: (val) =>
            transformStaticConstFunctionInvocation(
                swidStaticConstFunctionInvocation: val));
