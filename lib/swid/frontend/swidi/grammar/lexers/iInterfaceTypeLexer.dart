import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iAnnotationListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iLibraryScopePrefixLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iQualifiedLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iReferenceDeclarationPrefixLexer.dart';

@optionalTypeArgs
@immutable
abstract class IInterfaceTypeLexer<T extends dynamic, U extends Parser<T>>
    implements
        IAnnotationListLexer<T, U>,
        ILibraryScopePrefixLexer<T, U>,
        IReferenceDeclarationPrefixLexer<T, U>,
        IQualifiedLexer<T, U> {
  const IInterfaceTypeLexer();

  U interfaceType();
}
