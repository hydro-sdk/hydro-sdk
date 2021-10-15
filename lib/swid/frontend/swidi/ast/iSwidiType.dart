import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiAnnotation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/util/iCloneable.dart';
import 'package:hydro_sdk/swid/util/iHashComparable.dart';
import 'package:hydro_sdk/swid/util/iHashKey.dart';

abstract class ISwidiType<T extends Object>
    implements IHashKey, IHashComparable, ICloneable<T> {
  final SwidiNullabilitySuffix nullabilitySuffix;
  final List<SwidiAnnotation> annotations;

  const ISwidiType(final this.nullabilitySuffix, final this.annotations);
}
