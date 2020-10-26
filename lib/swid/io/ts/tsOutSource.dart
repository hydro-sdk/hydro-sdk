import 'package:hydro_sdk/swid/ir/backend/ts/tsir.dart';
import 'package:meta/meta.dart';

class TsOutSource {
  final String path;
  final String fileName;
  final List<TsIr> ir;

  TsOutSource(
      {@required this.path, @required this.fileName, @required this.ir});
}
