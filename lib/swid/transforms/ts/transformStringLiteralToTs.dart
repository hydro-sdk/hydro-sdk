import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidStringLiteral.dart';

String transformStringLiteralToTs(
        {@required SwidStringLiteral swidStringLiteral}) =>
    "\"${swidStringLiteral.value}\"";
