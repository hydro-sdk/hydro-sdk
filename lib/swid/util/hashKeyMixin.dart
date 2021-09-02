import 'package:meta/meta.dart';
import 'package:reflectable/reflectable.dart';

import 'package:hydro_sdk/swid/util/iCloneable.dart';
import 'package:hydro_sdk/swid/util/iHashKey.dart';
import 'package:hydro_sdk/swid/backend/dart/dartBindInstanceFieldDirect.dart';

@immutable
@optionalTypeArgs
mixin HashKeyMixin<T extends Object> implements IHashKey, ICloneable<T> {
  @nonVirtual
  @override
  int get hashKey {
    if (this is DartBindInstanceFieldDirect) {
      final instanceMirror = reflector.reflect(this);
      final classMirror = instanceMirror.type;

      print(classMirror.instanceMembers);

      return 0;
    } else {
      return hashCode;
    }
  }
}
