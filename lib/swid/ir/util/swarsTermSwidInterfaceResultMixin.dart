import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';

mixin SwarsTermSwidInterfaceResultMixin<T extends Object, U extends Object,
        V extends SwidInterface>
    on SwarsTermJsonTransformableResultMixin<T, U, V>
    implements ISwarsTermJsonTransformableResult<T, U, V>, ISwarsTerm<T, U, V> {
  @nonVirtual
  @override
  V termResultDeserializer(final Map<String, dynamic> json) =>
      SwidInterface.fromJson(json) as V;
}
