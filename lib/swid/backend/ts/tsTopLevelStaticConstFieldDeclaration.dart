import 'package:hydro_sdk/swid/ir/swidTopLevelStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTopLevelStaticConstFieldDeclaration.dart';

class TsTopLevelStaticConstFieldDeclaration {
  final SwidTopLevelStaticConstFieldDeclaration
      swidTopLevelStaticConstFieldDeclaration;

  const TsTopLevelStaticConstFieldDeclaration({
    required final this.swidTopLevelStaticConstFieldDeclaration,
  });

  String toTsSource() => transformTopLevelStaticConstFieldDeclaration(
        swidTopLevelStaticConstFieldDeclaration:
            swidTopLevelStaticConstFieldDeclaration,
      );
}
