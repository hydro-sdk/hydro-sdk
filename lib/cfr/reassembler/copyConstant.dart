import 'package:hydro_sdk/cfr/vm/const.dart';
import 'package:meta/meta.dart';

Const copyConstant({@required Const source}) {
  switch (source.type) {
    case ConstType.CONST_NIL:
      return Const();
      break;
    case ConstType.CONST_BOOL:
      return BoolConst(source.value);
      break;
    case ConstType.CONST_UNKNOWN:
      return source;
      break;
    case ConstType.CONST_NUMBER:
      return NumberConst(source.value);
      break;
    case ConstType.CONST_STRING:
      return StringConst(source.value);
      break;
  }
  return null;
}
