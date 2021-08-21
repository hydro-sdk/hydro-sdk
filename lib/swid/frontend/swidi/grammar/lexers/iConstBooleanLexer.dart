import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstBooleanFalseLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstBooleanTrueLexer.dart';

abstract class IConstBooleanLexer<T>
    implements IConstBooleanTrueLexer<T>, IConstBooleanFalseLexer<T> {
  const IConstBooleanLexer();

  T constBoolean();
}
