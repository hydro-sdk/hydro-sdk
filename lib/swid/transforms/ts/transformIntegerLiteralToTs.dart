import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidIntegerLiteral.dart';

String transformIntegerLiteralToTs(
        {@required SwidIntegerLiteral swidIntegerLiteral}) =>
    swidIntegerLiteral.value;
