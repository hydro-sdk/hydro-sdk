import 'dart:developer';

import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';

mixin SwidiFunctionDeclarationParameterListParser on SwidiGrammarDefinition {
  Parser functionDeclarationParameterList() =>
      super.functionDeclarationParameterList().map((x) {
        debugger();
        print(x);
        return x;
      });
}
