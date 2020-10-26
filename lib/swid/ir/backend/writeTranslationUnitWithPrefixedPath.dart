import 'dart:io';

import 'package:hydro_sdk/swid/ir/backend/translationUnit.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

Future<void> writeTranslationUnitWithPrefixedPath(
    {@required List<String> prefixPaths,
    @required TranslationUnit translationUnit}) async {
  var dir = Directory([
    ...prefixPaths,
    ...translationUnit.path.split(p.separator)
  ].join(p.separator));

  if (!await dir.exists()) {
    await dir.create(recursive: true);
  }

  await File([...prefixPaths, ...translationUnit.path.split(p.separator)]
              .join(p.separator) +
          p.separator +
          translationUnit.fileName)
      .writeAsString(translationUnit.toSource());
}
