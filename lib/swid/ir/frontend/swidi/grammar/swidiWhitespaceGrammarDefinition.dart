import 'package:petitparser/core.dart';
import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

mixin SwidiWhitespaceGrammarDefinition on GrammarDefinition {
  Parser HIDDEN() => ref(HIDDEN_STUFF).plus();

  Parser HIDDEN_STUFF() =>
      ref(WHITESPACE) | ref(SINGLE_LINE_COMMENT) | ref(MULTI_LINE_COMMENT);

  Parser WHITESPACE() => whitespace();

  Parser SINGLE_LINE_COMMENT() =>
      string('//') & ref(NEWLINE).neg().star() & ref(NEWLINE).optional();

  Parser MULTI_LINE_COMMENT() =>
      string('/*') &
      (ref(MULTI_LINE_COMMENT) | string('*/').neg()).star() &
      string('*/');

  Parser NEWLINE() => pattern('\n\r');
}
