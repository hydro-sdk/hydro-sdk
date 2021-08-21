import 'dart:io';

import 'package:path/path.dart' as p;

import 'package:hydro_sdk/swid/backend/translationUnit.dart';

Future<void> writeTranslationUnit(
    {required final TranslationUnit translationUnit}) async {
  var dir =
      Directory([...translationUnit.path.split(p.separator)].join(p.separator));

  if (!await dir.exists()) {
    await dir.create(recursive: true);
  }

  var filePath =
      [...translationUnit.path.split(p.separator)].join(p.separator) +
          p.separator +
          translationUnit.fileName;

  await File(filePath).writeAsString(translationUnit.toSource());
}
