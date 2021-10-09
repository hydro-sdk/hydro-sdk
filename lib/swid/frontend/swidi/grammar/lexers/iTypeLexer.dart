import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iInterfaceTypeLexer.dart';
import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';


@optionalTypeArgs
@immutable
abstract class ITypeLexer<T extends dynamic, U extends Parser<T>>
    implements IInterfaceTypeLexer<T, U> {
  const ITypeLexer();

  U type();
}
