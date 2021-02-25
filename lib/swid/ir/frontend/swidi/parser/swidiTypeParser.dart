import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiInterface.dart';
import 'package:petitparser/petitparser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';

mixin SwidiTypeParser on SwidiGrammarDefinition {
  Parser<SwidiInterface> type() => super.type().map((x) {
        return SwidiInterface(
            name: List.from(x)
                    .where((e) => e != null)
                    .map((e) => [...e])
                    .reduce((value, element) => [...value, ...element])
                    .whereType<Token>()
                    .toList()
                    ?.first
                    ?.input ??
                "");
      });
}
