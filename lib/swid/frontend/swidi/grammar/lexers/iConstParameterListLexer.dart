import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstNamedParameterListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstPositionalParameterListLexer.dart';

abstract class IConstParameterListLexer<T>
    implements
        IConstPositionalParameterListLexer<T>,
        IConstNamedParameterListLexer<T> {
  const IConstParameterListLexer();

  T constParameterList();
}
