import 'package:petitparser/core.dart';
import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

mixin SwidiWhitespaceGrammarDefinition on GrammarDefinition {
  Parser HIDDEN() => ref0(HIDDEN_STUFF).plus();

  Parser HIDDEN_STUFF() =>
      ref0(WHITESPACE) | ref0(SINGLE_LINE_COMMENT) | ref0(MULTI_LINE_COMMENT);

  Parser WHITESPACE() => whitespace();

  Parser SINGLE_LINE_COMMENT() =>
      string('//') & ref0(NEWLINE).neg().star() & ref0(NEWLINE).optional();

  Parser MULTI_LINE_COMMENT() =>
      string('/*') &
      (ref0(MULTI_LINE_COMMENT) | string('*/').neg()).star() &
      string('*/');

  Parser NEWLINE() => pattern('\n\r');
}
