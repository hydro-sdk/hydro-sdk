import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstLexer.dart';

abstract class IAnnotationLexer<T> implements IConstLexer<T> {
  const IAnnotationLexer();

  T annotation();
}
