import 'package:hydro_sdk/swid/ir/backend/translationUnit.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/TsIr.dart';
import 'package:meta/meta.dart';

class TsTranslationUnit implements TranslationUnit {
  final String path;
  final String fileName;
  final List<TsIr> ir;

  TsTranslationUnit({
    @required this.path,
    @required this.fileName,
    @required this.ir,
  });

  String toSource() => ir.map((x) => x.toTsSource()).toList().join();
}
