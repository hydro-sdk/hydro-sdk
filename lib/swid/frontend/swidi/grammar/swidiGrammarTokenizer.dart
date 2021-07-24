import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';
import 'package:petitparser/src/definition/reference.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiWhitespaceGrammarDefinition.dart';

class _Undefined {
  const _Undefined();
}

mixin SwidiGrammarTokenizer
    on GrammarDefinition, SwidiWhitespaceGrammarDefinition {
  static const _undefined = _Undefined();

  @nonVirtual
  Parser<T> _ref<T>(
    Function callback, [
    dynamic arg1 = _undefined,
    dynamic arg2 = _undefined,
    dynamic arg3 = _undefined,
    dynamic arg4 = _undefined,
    dynamic arg5 = _undefined,
  ]) =>
      Reference<T>(callback, [
        arg1,
        arg2,
        arg3,
        arg4,
        arg5,
      ]);

  @nonVirtual
  Parser token(Object input) {
    if (input is Parser) {
      return input.token().trim(ref0(hiddenStuff));
    } else if (input is String) {
      return token(input.toParser());
    } else if (input is Function) {
      return token(_ref(input));
    }
    throw ArgumentError.value(input, "invalid token parser");
  }
}
