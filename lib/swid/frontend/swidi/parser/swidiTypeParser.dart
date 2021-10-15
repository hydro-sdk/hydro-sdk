import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iInterfaceTypeLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiFunctionTypeGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionTypeParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iInterfaceTypeParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iTypeParser.dart';

mixin SwidiTypeParser
    on SwidiDeclarationGrammarDefinition, SwidiFunctionTypeGrammarDefinition
    implements
        ITypeLexer,
        IInterfaceTypeLexer,
        IFunctionTypeLexer,
        ITypeParser<Parser<SwidiType?>>,
        IInterfaceTypeParser<Parser<SwidiInterface>>,
        IFunctionTypeParser<Parser<SwidiFunctionType>> {
  @override
  Parser<SwidiType?> type() => super.type().map(
        (x) => x is SwidiInterface
            ? SwidiType.fromSwidiInterface(
                swidiInterface: x,
              )
            : x is SwidiFunctionType
                ? SwidiType.fromSwidiFunctionType(
                    swidiFunctionType: x,
                  )
                : null,
      );
}
