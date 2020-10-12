import 'package:hydro_sdk/swid/ir/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformNormalParametersToTs.dart';
import 'package:meta/meta.dart';

String transformStaticConstFunctionInvocation(
        {@required
            SwidStaticConstFunctionInvocation
                swidStaticConstFunctionInvocation}) =>
    (swidStaticConstFunctionInvocation.isConstructorInvocation ? "new " : "") +
    swidStaticConstFunctionInvocation.value +
    "(" +
    transformNormalParametersToTs(
        swidLiterals: swidStaticConstFunctionInvocation.normalParameters) + 
    ")";
