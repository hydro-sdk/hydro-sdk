import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';

mixin SwarsTermSwidClassResultMixin<T extends Object, U extends Object,
        V extends SwidClass> on SwarsTermJsonTransformableResultMixin<T, U, V>
    implements ISwarsTermJsonTransformableResult<T, U, V>, ISwarsTerm<T, U, V> {
  @nonVirtual
  @override
  V termResultDeserializer(final Map<String, dynamic> json) =>
      SwidClass.fromJson(json) as V;
}
