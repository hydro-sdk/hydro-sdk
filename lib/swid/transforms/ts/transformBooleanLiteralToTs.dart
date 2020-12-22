import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidBooleanLiteral.dart';

String transformBooleanLiteralToTs(
        {@required SwidBooleanLiteral swidBooleanLiteral}) =>
    swidBooleanLiteral.value;
