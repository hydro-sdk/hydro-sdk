import 'package:analyzer/dart/ast/ast.dart' show SimpleStringLiteral;
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:meta/meta.dart';

SwidStringLiteral swidStringLiteralFromSimpleStringLiteral(
        {@required SimpleStringLiteral simpleStringLiteral}) =>
    SwidStringLiteral(value: simpleStringLiteral.stringValue);
