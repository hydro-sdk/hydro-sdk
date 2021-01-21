import 'dart:io';

import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

import 'package:hydro_sdk/swid/ir/backend/translationUnit.dart';

Future<void> writeTranslationUnit(
    {@required TranslationUnit translationUnit}) async {
  var dir =
      Directory([...translationUnit.path.split(p.separator)].join(p.separator));

  if (!await dir.exists()) {
    await dir.create(recursive: true);
  }

  var filePath =
      [...translationUnit.path.split(p.separator)].join(p.separator) +
          p.separator +
          translationUnit.fileName;

  String content = "";

  if (await File(filePath).exists()) {
    content = await File(filePath).readAsString();
  }

  await File(filePath).writeAsString(translationUnit.toSource());
}
