import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/util/iCloneable.dart';
import 'package:hydro_sdk/swid/util/iHashComparable.dart';
import 'package:hydro_sdk/swid/util/iHashKey.dart';

abstract class IShortHandOverride<T extends Object>
    implements IHashKey, IHashComparable, ICloneable<T> {
  final SwidiConst shortHandOverride;

  const IShortHandOverride(final this.shortHandOverride);
}
