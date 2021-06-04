import 'package:analyzer/dart/ast/ast.dart' show DoubleLiteral;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidDoubleLiteral.dart';

SwidDoubleLiteral swidDoubleLiteralFromDoubleLiteral(
        {required DoubleLiteral doubleLiteral}) =>
    SwidDoubleLiteral(value: doubleLiteral.literal.lexeme);
