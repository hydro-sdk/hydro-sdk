import 'package:hydro_sdk/swid/swidNullabilitySuffix.dart';
import 'package:meta/meta.dart';

class SwidType {
  final String name;
  final SwidNullabilitySuffix nullabilitySuffix;
  final String originalPackagePath;

  SwidType({
    @required this.name,
    @required this.nullabilitySuffix,
    @required this.originalPackagePath,
  });
}
