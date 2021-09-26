import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeLexer.dart';

abstract class ITypeFormalLexer<T>
    implements IIdentifierLexer<T>, ITypeLexer<T> {
  const ITypeFormalLexer();

  T typeFormal();
}
