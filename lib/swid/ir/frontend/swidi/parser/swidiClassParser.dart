import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:petitparser/petitparser.dart';

mixin SwidiClassParser on SwidiGrammarDefinition {
  Parser<SwidiClass> classDefinition() => super.classDefinition().map((x) {
        return SwidiClass(
            name:
                List.from(x).where((x) => x != null).toList()[1].input.trim());
      });
}
