import 'package:meta/meta.dart';
import 'package:hydro_sdk/swid/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/swidType.dart';

class SwidClass implements SwidType {
  final String name;
  final SwidNullabilitySuffix nullabilitySuffix;
  final String originalPackagePath;
  final SwidFunctionType constructorType;
  final List<SwidFunctionType> methods;

  SwidClass({
    @required this.name,
    @required this.nullabilitySuffix,
    @required this.originalPackagePath,
    @required this.constructorType,
    @required this.methods,
  });
}
