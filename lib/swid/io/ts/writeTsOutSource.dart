import 'dart:io';

import 'package:hydro_sdk/swid/io/ts/tsOutSource.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

Future<void> writeTsOutSource(
    {@required List<String> prefixPaths,
    @required TsOutSource tsOutSource}) async {
  var dir = Directory([...prefixPaths, ...tsOutSource.path.split(p.separator)]
      .join(p.separator));

  if (!await dir.exists()) {
    await dir.create(recursive: true);
  }

  await File([...prefixPaths, ...tsOutSource.path.split(p.separator)]
              .join(p.separator) +
          p.separator +
          tsOutSource.fileName)
      .writeAsString(tsOutSource.content);
}
