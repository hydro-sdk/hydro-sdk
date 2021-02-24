import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';

mixin SwidiFunctionDeclarationParser on SwidiGrammarDefinition {
  Parser<SwidiFunctionDeclaration> functionDeclaration() =>
      super.functionDeclaration().map((x) {
        return SwidiFunctionDeclaration(
            name: x[1].input, returnType: x[0].input);
      });
}
