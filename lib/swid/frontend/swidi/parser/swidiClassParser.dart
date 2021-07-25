import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iLibraryScopePrefixLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionDeclarationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iLibraryScopePrefixParser.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iClassLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iClassParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiClassParser on SwidiGrammarDefinition
    implements
        IClassLexer,
        ILibraryScopePrefixLexer,
        IFunctionDeclarationLexer,
        IClassParser<Parser<SwidiClass>>,
        ILibraryScopePrefixParser<Parser<SwidiLibraryScopePrefix>>,
        IFunctionDeclarationParser<Parser<SwidiFunctionDeclaration>> {
  @override
  Parser<SwidiClass> classDefinition() => super.classDefinition().map((x) {
        final name = collectTokens<Token>(x);
        final libraryPrefix = collectTokens<SwidiLibraryScopePrefix>(x);
        final methods = collectTokens<SwidiFunctionDeclaration>(x);
        return SwidiClass(
          name:
              List.from(name).where((x) => x != null).toList()[1].input.trim(),
          libraryScopePrefix: libraryPrefix.isNotEmpty
              ? libraryPrefix.first
              : SwidiLibraryScopePrefix.empty,
          methods: methods,
        );
      });
}
