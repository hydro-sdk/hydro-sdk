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

  var filePath =
      [...translationUnit.path.split(p.separator)].join(p.separator) +
          p.separator +
          translationUnit.fileName;

  String content = "";

  if (await File(filePath).exists()) {
    content = await File(filePath).readAsString();
  }

  await File(filePath).writeAsString(content
          .split("\n")
          .where((x) =>
              x.isNotEmpty &&
              x.length >= 5 &&
              x[0] == "i" &&
              x[1] == "m" &&
              x[2] == "p" &&
              x[3] == "o" &&
              x[4] == "r" &&
              x[5] == "t")
          .toList()
          .join("\n") +
      translationUnit.toSource());
}
