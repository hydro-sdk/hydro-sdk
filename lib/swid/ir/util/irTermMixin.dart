import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';

mixin IrTermMixin<T extends Object, U extends Object>
    on
        SwarsTermJsonTransformableResultMixin<T, U, SwidType>,
        ISwarsTerm<T, U, SwidType> {
  @nonVirtual
  @override
  SwidType termResultDeserializer(final Map<String, dynamic> json) =>
      SwidType.fromJson(json);
}
