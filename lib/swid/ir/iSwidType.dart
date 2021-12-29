import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/util/iCloneable.dart';

abstract class ISwidType<T extends Object> implements ICloneable<T> {
  const ISwidType();

  SwidNullabilitySuffix get nullabilitySuffix;
  String get name;
  String get originalPackagePath;
  SwidDeclarationModifiers get declarationModifiers;
  ISwidType? get element;
}
