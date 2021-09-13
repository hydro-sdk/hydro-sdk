import 'package:collection/collection.dart';

import 'package:hydro_sdk/swid/backend/dart/dartir.dart';
import 'package:hydro_sdk/swid/backend/translationUnit.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';

class DartTranslationUnit implements TranslationUnit {
  final String path;
  final String fileName;
  final List<DartIr?> ir;
  final ISwarsPipeline pipeline;

  DartTranslationUnit({
    required this.path,
    required this.fileName,
    required this.ir,
    required this.pipeline,
  });

  String toSource() => ir
      .whereNotNull()
      .map((x) => x.transform(
            pipeline: pipeline,
          ))
      .toList()
      .join();
}
