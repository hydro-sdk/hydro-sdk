import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiStaticFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iClassLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iLibraryScopePrefixLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iStaticFunctionDeclarationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iClassParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionDeclarationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iLibraryScopePrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iStaticFunctionDeclarationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiClassParser on SwidiGrammarDefinition
    implements
        IClassLexer,
        ILibraryScopePrefixLexer,
        IFunctionDeclarationLexer,
        IStaticFunctionDeclarationLexer,
        IClassParser<Parser<SwidiClass>>,
        ILibraryScopePrefixParser<Parser<SwidiLibraryScopePrefix>>,
        IFunctionDeclarationParser<Parser<SwidiFunctionDeclaration>>,
        IStaticFunctionDeclarationParser<
            Parser<SwidiStaticFunctionDeclaration>> {
  @override
  Parser<SwidiClass> classDefinition() => super.classDefinition().map((x) {
        final name = collectTokens<Token>(x);
        final libraryPrefix = collectTokens<SwidiLibraryScopePrefix>(x);
        final methods = collectTokens<SwidiFunctionDeclaration>(x);
        final staticMethods = collectTokens<SwidiStaticFunctionDeclaration>(x);

        return SwidiClass(
          name:
              List.from(name).where((x) => x != null).toList()[1].input.trim(),
          libraryScopePrefix: libraryPrefix.isNotEmpty
              ? libraryPrefix.first
              : SwidiLibraryScopePrefix.empty,
          methods: methods,
          staticMethods: staticMethods
              .map(
                (x) => x.functionDeclaration,
              )
              .toList(),
          shortHandOverride: (({
            required final List<SwidiConst> consts,
          }) =>
              consts.isNotEmpty
                  ? consts.first
                  : SwidiConst.fromSwidiEmptyConst(
                      swidiEmptyConst: SwidiEmptyConst(),
                    ))(
            consts: collectTokens<SwidiConst>(x),
          ),
        );
      });
}
