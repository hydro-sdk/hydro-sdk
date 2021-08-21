import 'package:hydro_sdk/swid/backend/translationUnit.dart';
import 'package:hydro_sdk/swid/backend/ts/tsir.dart';

class TsTranslationUnit implements TranslationUnit {
  final String path;
  final String fileName;
  final List<TsIr?> ir;

  TsTranslationUnit({
    required final this.path,
    required final this.fileName,
    required final this.ir,
  });

  String toSource() => ir.map((x) => x!.toTsSource()).toList().join();
}
