import 'package:hydro_sdk/swid/ir/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:meta/meta.dart';

String transformStringLiteralToTs(
        {@required SwidStringLiteral swidStringLiteral}) =>
    "\"${swidStringLiteral.value}\"";
