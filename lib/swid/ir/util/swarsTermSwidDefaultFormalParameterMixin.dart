import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';

mixin SwarsTermSwidDefaultFormalParameterResultMixin<T extends Object,
        U extends Object, V extends SwidDefaultFormalParameter>
    on SwarsTermJsonTransformableResultMixin<T, U, V>
    implements ISwarsTermJsonTransformableResult<T, U, V>, ISwarsTerm<T, U, V> {
  @nonVirtual
  @override
  V termResultDeserializer(final Map<String, dynamic> json) =>
      SwidDefaultFormalParameter.fromJson(json) as V;
}
