import 'package:meta/meta.dart';
import 'package:path/path.dart' as path;

import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';

class TsResolvedImport {
  final SwidType importee;
  final SwidType importer;
  final List<String> prefixPaths;

  TsResolvedImport({
    @required this.importee,
    @required this.importer,
    @required this.prefixPaths,
  });

  String toTsSource() => (({String symbolName, String resolvedPath}) => [
            "import { ",
            removeTypeArguments(str: symbolName),
            " }",
            " from ",
            "\"",
            resolvedPath,
            path.separator,
            transformToCamelCase(str: removeTypeArguments(str: symbolName)),
            "\"",
          ].join())(
        symbolName: importee.name,
        resolvedPath: path.relative(
          prefixPaths.join(path.separator) +
              path.separator +
              transformPackageUri(
                packageUri: importee.originalPackagePath,
              ),
          from: prefixPaths.join(path.separator) +
              path.separator +
              transformPackageUri(
                packageUri: importer.originalPackagePath,
              ),
        ),
      );
}
