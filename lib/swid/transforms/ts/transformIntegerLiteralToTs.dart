import 'package:hydro_sdk/swid/ir/frontend/dart/swidIntegerLiteral.dart';
import 'package:meta/meta.dart';

String transformIntegerLiteralToTs(
        {@required SwidIntegerLiteral swidIntegerLiteral}) =>
    swidIntegerLiteral.value;
