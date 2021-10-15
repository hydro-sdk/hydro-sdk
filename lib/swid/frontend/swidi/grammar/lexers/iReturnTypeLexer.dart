import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeLexer.dart';

@optionalTypeArgs
@immutable
abstract class IReturnTypeLexer<T extends dynamic, U extends Parser<T>>
    implements ITypeLexer<T, U> {
  const IReturnTypeLexer();

  U returnType();
}
