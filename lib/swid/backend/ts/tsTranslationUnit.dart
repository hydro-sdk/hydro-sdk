import 'package:collection/collection.dart';

import 'package:hydro_sdk/swid/backend/translationUnit.dart';
import 'package:hydro_sdk/swid/backend/ts/tsir.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';

class TsTranslationUnit implements TranslationUnit {
  final String path;
  final String fileName;
  final List<TsIr?> ir;
  final ISwarsPipeline pipeline;

  TsTranslationUnit({
    required final this.path,
    required final this.fileName,
    required final this.ir,
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
