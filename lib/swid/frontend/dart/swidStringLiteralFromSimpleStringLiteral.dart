import 'package:analyzer/dart/ast/ast.dart' show SimpleStringLiteral;

import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';

SwidStringLiteral swidStringLiteralFromSimpleStringLiteral(
        {required final SimpleStringLiteral simpleStringLiteral}) =>
    SwidStringLiteral(value: simpleStringLiteral.stringValue!);
