import 'dart:developer';

import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiTypeParser.dart';

mixin SwidiSimpleDeclarationParser on SwidiGrammarDefinition, SwidiTypeParser {
  Parser<SwidiDeclaration> simpleDeclaration() =>
      super.simpleDeclaration().map((x) {
        return SwidiDeclaration(
            name: List.from(x).whereType<Token>()?.first?.input ?? "",
            type: List.from(x).whereType<SwidiInterface>()?.first);
      });
}
