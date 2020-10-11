import 'package:hydro_sdk/swid/ir/narrowSwidLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidLiteral.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformIntegerLiteralToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStringLiteralToTs.dart';
import 'package:meta/meta.dart';

String transformNormalParametersToTs(
        {@required List<SwidLiteral> swidLiterals}) =>
    swidLiterals
        ?.map((x) => narrowSwidLiteral<String>(
              swidLiteral: x,
              onSwidIntegerLiteral: (val) =>
                  transformIntegerLiteralToTs(swidIntegerLiteral: val),
              onSwidStringLiteral: (val) =>
                  transformStringLiteralToTs(swidStringLiteral: val),
              onSwidStaticConstFunctionInvocation: null,
            ))
        ?.join(",") ??
    "";
