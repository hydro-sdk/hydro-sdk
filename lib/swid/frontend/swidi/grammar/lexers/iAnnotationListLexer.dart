import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iAnnotationLexer.dart';

abstract class IAnnotationListLexer<T> implements IAnnotationLexer<T> {
  const IAnnotationListLexer();

  T annotationList();
}
