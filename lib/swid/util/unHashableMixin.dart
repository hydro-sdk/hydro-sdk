import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCloneable.dart';
import 'package:hydro_sdk/swid/util/iHashKey.dart';

@immutable
@optionalTypeArgs
mixin UnhashableMixin<T extends Object> on HashKeyMixin<T>
    implements IHashKey, ICloneable<T> {
  @nonVirtual
  @override
  List<int> get hashableParts => [
        ...const Uuid().v4().hashableParts,
      ];
}
