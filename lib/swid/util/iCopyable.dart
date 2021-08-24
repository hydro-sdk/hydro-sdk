import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/util/iCloneable.dart';

@immutable
@optionalTypeArgs
abstract class ICopyable<T extends Object, U extends Object>
    implements ICloneable<T> {
  const ICopyable();

  U get copyWith;
}
