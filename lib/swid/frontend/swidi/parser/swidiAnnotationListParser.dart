import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiAnnotation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiAnnotationList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iAnnotationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iAnnotationListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iAnnotationListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iAnnotationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiAnnotationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiAnnotationListParser
    on SwidiDeclarationGrammarDefinition, SwidiAnnotationParser
    implements
        IAnnotationListLexer,
        IAnnotationLexer,
        IAnnotationListParser<Parser<SwidiAnnotationList>>,
        IAnnotationParser<Parser<SwidiAnnotation>> {
  @override
  Parser<SwidiAnnotationList> annotationList() => super.annotationList().map(
        (x) => SwidiAnnotationList(
          annotationList: collectTokens<SwidiAnnotation>(x),
        ),
      );
}
