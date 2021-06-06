import 'package:analyzer/dart/ast/ast.dart' show IntegerLiteral;

import 'package:hydro_sdk/swid/ir/swidIntegerLiteral.dart';

SwidIntegerLiteral swidIntegerLiteralFromIntegerLiteral(
        {required IntegerLiteral integerLiteral}) =>
    SwidIntegerLiteral(value: integerLiteral.literal.lexeme);
