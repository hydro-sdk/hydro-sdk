import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidIntegerLiteral.dart';

String transformIntegerLiteralToTs(
        {@required SwidIntegerLiteral swidIntegerLiteral}) =>
    swidIntegerLiteral.value;
