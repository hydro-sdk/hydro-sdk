import 'package:hydro_sdk/cfr/vm/const.dart';

Const copyConstant({required Const source}) {
  switch (source.type) {
    case ConstType.CONST_NIL:
      return Const();
    case ConstType.CONST_BOOL:
      return BoolConst(source.value);
    case ConstType.CONST_UNKNOWN:
      return source;
    case ConstType.CONST_NUMBER:
      return NumberConst(source.value);
    case ConstType.CONST_STRING:
      return StringConst(source.value);
  }
}
