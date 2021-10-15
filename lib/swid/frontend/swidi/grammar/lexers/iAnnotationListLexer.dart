import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iAnnotationLexer.dart';

@optionalTypeArgs
@immutable
abstract class IAnnotationListLexer<T extends dynamic, U extends Parser<T>>
    implements IAnnotationLexer<T, U> {
  const IAnnotationListLexer();

  U annotationList();
}
