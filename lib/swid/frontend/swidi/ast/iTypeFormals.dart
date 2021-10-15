import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeFormal.dart';
import 'package:hydro_sdk/swid/util/iCloneable.dart';
import 'package:hydro_sdk/swid/util/iHashComparable.dart';
import 'package:hydro_sdk/swid/util/iHashKey.dart';

abstract class ITypeFormals<T extends Object>
    implements IHashKey, IHashComparable, ICloneable<T> {
  final List<SwidiTypeFormal> typeFormals;

  const ITypeFormals(final this.typeFormals);
}
