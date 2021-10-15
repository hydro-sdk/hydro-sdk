import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionTypeOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeOptionalParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionTypeOptionalParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iTypeParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeParser.dart';

mixin SwidiFunctionTypeOptionalParameterParser
    on
        SwidiGrammarDefinition,
        SwidiTypeParser
    implements
        IFunctionTypeOptionalParameterLexer,
        ITypeLexer,
        IFunctionTypeOptionalParameterParser<
            Parser<SwidiFunctionTypeOptionalParameter?>>,
        ITypeParser<Parser<SwidiType?>> {
  @override
  Parser<SwidiFunctionTypeOptionalParameter?> functionTypeOptionalParameter() =>
      super.functionTypeOptionalParameter().map(
            (x) => x is SwidiType
                ? SwidiFunctionTypeOptionalParameter(
                    type: x,
                  )
                : null,
          );
}
