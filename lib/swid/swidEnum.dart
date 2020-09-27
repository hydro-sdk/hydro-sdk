import 'package:meta/meta.dart';

class SwidEnum {
  final String originalPackagePath;
  final String identifier;
  final List<String> children;

  SwidEnum({
    @required this.originalPackagePath,
    @required this.identifier,
    @required this.children,
  });
}
