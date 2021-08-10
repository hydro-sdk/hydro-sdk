import 'package:hydro_sdk/swid/ir/swidIntegerLiteral.dart';

String transformIntegerLiteralToTs(
        {required final SwidIntegerLiteral swidIntegerLiteral}) =>
    swidIntegerLiteral.value;
