import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';

String transformStringLiteralToTs(
        {required final SwidStringLiteral swidStringLiteral}) =>
    "\"${swidStringLiteral.value}\"";
