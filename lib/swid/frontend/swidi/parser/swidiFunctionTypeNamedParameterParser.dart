import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionTypeNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeNamedParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionTypeNamedParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iTypeParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeParser.dart';

mixin SwidiFunctionTypeNamedParameterParser
    on
        SwidiGrammarDefinition,
        SwidiTypeParser
    implements
        IFunctionTypeNamedParameterLexer,
        ITypeLexer,
        IIdentifierLexer,
        IFunctionTypeNamedParameterParser<
            Parser<SwidiFunctionTypeNamedParameter?>>,
        ITypeParser<Parser<SwidiType?>> {
  @override
  Parser<SwidiFunctionTypeNamedParameter?> functionTypeNamedParameter() =>
      super.functionTypeNamedParameter().map(
            (x) => SwidiFunctionTypeNamedParameter(
              name: List.from(x).whereType<Token?>().first?.input ?? "",
              type: List.from(x).whereType<SwidiType>().first,
            ),
          );
}
