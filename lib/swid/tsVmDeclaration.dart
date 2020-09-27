import 'package:hydro_sdk/swid/swidFunctionType.dart';
import 'package:meta/meta.dart';

class TsVmDeclaration {
  final List<SwidFunctionType> methods;
  final List<TsVmDeclaration> children;

  TsVmDeclaration({
    @required this.methods,
    @required this.children,
  });
}
