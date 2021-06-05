

import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';

String transformStringLiteralToTs(
        {required SwidStringLiteral swidStringLiteral}) =>
    "\"${swidStringLiteral.value}\"";
