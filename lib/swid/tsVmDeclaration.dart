import 'package:hydro_sdk/swid/ir/dart/swidFunctionType.dart';
import 'package:meta/meta.dart';

class TsVmDeclaration {
  final List<SwidFunctionType> methods;
  final List<TsVmDeclaration> children;

  TsVmDeclaration({
    @required this.methods,
    @required this.children,
  });
}
