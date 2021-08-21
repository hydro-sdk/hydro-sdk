import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierLexer.dart';

abstract class IQualifiedLexer<T> implements IIdentifierLexer<T> {
  const IQualifiedLexer();

  T qualified();
}
