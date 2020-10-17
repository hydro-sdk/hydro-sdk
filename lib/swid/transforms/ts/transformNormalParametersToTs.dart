import 'package:hydro_sdk/swid/ir/dart/swidLiteral.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';
import 'package:meta/meta.dart';

String transformNormalParametersToTs(
        {@required List<SwidLiteral> swidLiterals}) =>
    swidLiterals?.map((x) => transformLiteralToTs(swidLiteral: x))?.join(",") ??
    "";
