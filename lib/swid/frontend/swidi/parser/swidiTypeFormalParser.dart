import 'package:collection/collection.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeFormal.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeFormalLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iTypeFormalParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iTypeParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiTypeFormalParser
    on SwidiDeclarationGrammarDefinition, SwidiTypeParser
    implements
        ITypeFormalLexer,
        ITypeLexer,
        ITypeFormalParser<Parser<SwidiTypeFormal>>,
        ITypeParser<Parser<SwidiType?>> {
  @override
  Parser<SwidiTypeFormal> typeFormal() => super.typeFormal().map(
        (x) => SwidiTypeFormal(
          name: List.from(x).whereType<Token?>().first?.input ?? "",
          bound: (({
            required final List<SwidiInterface> bound,
          }) =>
              bound.isNotEmpty ? bound.first : SwidiInterface.empty)(
            bound: collectTokens<SwidiType>(x)
                .map(
                  (x) => x.maybeWhen(
                    fromSwidiInterface: (val) => val,
                    orElse: () => null,
                  ),
                )
                .whereNotNull()
                .toList(),
          ),
        ),
      );
}
