import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiClassParser on SwidiGrammarDefinition {
  Parser<SwidiClass> classDefinition() => super.classDefinition().map((x) {
        var name = collectTokens<Token>(x);
        var libraryPrefix = collectTokens<SwidiLibraryScopePrefix>(x);
        var methods = collectTokens<SwidiFunctionDeclaration>(x);
        return SwidiClass(
          name:
              List.from(name).where((x) => x != null).toList()[1].input.trim(),
          libraryScopePrefix: libraryPrefix?.isNotEmpty ?? false
              ? libraryPrefix.first
              : SwidiLibraryScopePrefix.empty,
          methods: methods,
        );
      });
}
