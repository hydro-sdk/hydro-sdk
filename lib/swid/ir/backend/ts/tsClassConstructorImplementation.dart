import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';
import 'package:meta/meta.dart';

class TsClassConstructorImplementation {
  final SwidClass swidClass;

  TsClassConstructorImplementation({@required this.swidClass});

  String toTsSource() =>
      "public constructor " +
      transformTypeDeclarationToTs(
          swidType: SwidType.fromSwidFunctionType(
              swidFunctionType: swidClass.constructorType)) +
      "{\n" +
      "}\n";
}
