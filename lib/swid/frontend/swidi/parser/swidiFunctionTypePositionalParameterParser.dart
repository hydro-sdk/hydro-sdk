import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionTypePositionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypePositionalParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionTypePositionalParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iTypeParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeParser.dart';

mixin SwidiFunctionTypePositionalParameterParser
    on
        SwidiGrammarDefinition,
        SwidiTypeParser
    implements
        IFunctionTypePositionalParameterLexer,
        ITypeLexer,
        IFunctionTypePositionalParameterParser<
            Parser<SwidiFunctionTypePositionalParameter?>>,
        ITypeParser<Parser<SwidiType?>> {
  @override
  Parser<SwidiFunctionTypePositionalParameter?>
      functionTypePositionalParameter() =>
          super.functionTypePositionalParameter().map(
                (x) => x is SwidiType
                    ? SwidiFunctionTypePositionalParameter(
                        type: x,
                      )
                    : null,
              );
}
