import 'package:meta/meta.dart';
import 'package:path/path.dart' as path;

import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';

String resolveTsImportsPaths({
  @required SwidType importee,
  @required SwidType importer,
  List<String> prefixPaths = const [],
}) =>
    path.relative(
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
    );
