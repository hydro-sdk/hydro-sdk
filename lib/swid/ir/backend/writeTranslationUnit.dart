import 'dart:io';

import 'package:hydro_sdk/swid/ir/backend/translationUnit.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

Future<void> writeTranslationUnit(
    {@required TranslationUnit translationUnit}) async {
  var dir =
      Directory([...translationUnit.path.split(p.separator)].join(p.separator));

  if (!await dir.exists()) {
    await dir.create(recursive: true);
  }

  await File([...translationUnit.path.split(p.separator)].join(p.separator) +
          p.separator +
          translationUnit.fileName)
      .writeAsString(translationUnit.toSource());
}
