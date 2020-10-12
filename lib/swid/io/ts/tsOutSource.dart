import 'package:hydro_sdk/swid/ir/dart/swidEnum.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformEnumToTs.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:meta/meta.dart';

class TsOutSource {
  final String path;
  final String fileName;
  final String content;

  TsOutSource._(
      {@required this.path, @required this.fileName, @required this.content});

  factory TsOutSource.fromEnum({@required SwidEnum swidEnum}) {
    return TsOutSource._(
        path: transformPackageUri(
          packageUri: swidEnum.originalPackagePath,
        ),
        fileName: "${transformToCamelCase(str: swidEnum.identifier)}.ts",
        content: transformEnumToTs(swidEnum: swidEnum));
  }
}
