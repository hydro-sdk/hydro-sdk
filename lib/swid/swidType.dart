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

  factory SwidType.clone({@required SwidType swidType}) => SwidType(
      name: swidType.name,
      nullabilitySuffix: swidType.nullabilitySuffix,
      originalPackagePath: swidType.originalPackagePath);
}
