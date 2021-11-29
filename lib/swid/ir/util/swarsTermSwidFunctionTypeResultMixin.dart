import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';

mixin SwarsTermSwidFunctionTypeResultMixin<T extends Object, U extends Object,
        V extends SwidFunctionType>
    on SwarsTermJsonTransformableResultMixin<T, U, V>
    implements ISwarsTermJsonTransformableResult<T, U, V>, ISwarsTerm<T, U, V> {
  @nonVirtual
  @override
  V termResultDeserializer(final Map<String, dynamic> json) =>
      SwidFunctionType.fromJson(json) as V;
}
