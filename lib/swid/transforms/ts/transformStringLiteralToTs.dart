import 'package:hydro_sdk/swid/ir/frontend/dart/swidStringLiteral.dart';
import 'package:meta/meta.dart';

String transformStringLiteralToTs(
        {@required SwidStringLiteral swidStringLiteral}) =>
    "\"${swidStringLiteral.value}\"";
