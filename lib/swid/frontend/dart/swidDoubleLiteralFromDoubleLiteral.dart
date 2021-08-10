import 'package:analyzer/dart/ast/ast.dart' show DoubleLiteral;

import 'package:hydro_sdk/swid/ir/swidDoubleLiteral.dart';

SwidDoubleLiteral swidDoubleLiteralFromDoubleLiteral(
        {required final DoubleLiteral doubleLiteral}) =>
    SwidDoubleLiteral(value: doubleLiteral.literal.lexeme);
