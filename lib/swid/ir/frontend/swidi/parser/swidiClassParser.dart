import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';

mixin SwidiClassParser on SwidiGrammarDefinition {
  Parser<SwidiClass> classDefinition() => super.classDefinition().map((x) {
        return SwidiClass(
          name: List.from(x).where((x) => x != null).toList()[1].input.trim(),
          methods: List.from(x)
              .where((e) => e is! Token)
              .where((e) => e != null)
              .map((e) => [...e])
              .reduce((value, element) => [...value, ...element])
              .toList()
              .cast<SwidiFunctionDeclaration>(),
        );
      });
}
