import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionTypeNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionTypeOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionTypePositionalOrOptionalOrNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionTypePositionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeParameterListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionTypeParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionTypeNamedParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionTypeOptionalParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionTypePositionalParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiFunctionTypeParameterListParser
    on
        SwidiGrammarDefinition,
        SwidiTypeParser,
        SwidiFunctionTypeOptionalParameterParser,
        SwidiFunctionTypePositionalParameterParser,
        SwidiFunctionTypeNamedParameterParser
    implements
        IFunctionTypeParameterListLexer,
        ITypeLexer,
        IFunctionTypeParameterListParser<
            Parser<
                List<SwidiFunctionTypePositionalOrOptionalOrNamedParameter>>> {
  @override
  Parser<List<SwidiFunctionTypePositionalOrOptionalOrNamedParameter>>
      functionTypeParameterList() => super.functionTypeParameterList().map(
            (x) => [
              ...collectTokens<SwidiFunctionTypePositionalParameter>(x)
                  .map(
                    (e) => SwidiFunctionTypePositionalOrOptionalOrNamedParameter
                        .fromSwidiFunctionTypePositionalParameter(
                      positionalParameter: e,
                    ),
                  )
                  .toList(),
              ...collectTokens<SwidiFunctionTypeOptionalParameter>(x)
                  .map(
                    (e) => SwidiFunctionTypePositionalOrOptionalOrNamedParameter
                        .fromSwidiFunctionTypeOptionalParameter(
                      optionalParameter: e,
                    ),
                  )
                  .toList(),
              ...collectTokens<SwidiFunctionTypeNamedParameter>(x)
                  .map(
                    (e) => SwidiFunctionTypePositionalOrOptionalOrNamedParameter
                        .fromSwidiFunctionTypeNamedParameter(
                      namedParameter: e,
                    ),
                  )
                  .toList(),
            ],
          );
}
