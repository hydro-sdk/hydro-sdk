import 'package:hydro_sdk/swid/ir/backend/dart/dartir.dart';
import 'package:hydro_sdk/swid/ir/backend/translationUnit.dart';
import 'package:meta/meta.dart';

class DartTranslationUnit implements TranslationUnit {
  final String path;
  final String fileName;
  final List<DartIr> ir;

  DartTranslationUnit({
    @required this.path,
    @required this.fileName,
    @required this.ir,
  });

  String toSource() => ir.map((x) => x.toDartSource()).toList().join();
}
