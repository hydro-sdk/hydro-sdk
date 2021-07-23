import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstParameterListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierLexer.dart';

abstract class IConstFunctionInvocationLexer<T>
    implements IIdentifierLexer<T>, IConstParameterListLexer<T> {
  const IConstFunctionInvocationLexer();

  T lexConstFunctionInvocation();
}
