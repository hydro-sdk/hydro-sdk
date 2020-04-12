import 'package:hydro_sdk/vm/context.dart';
import 'package:hydro_sdk/vm/frame.dart';

class ThreadResult {
  ThreadResult(this.success, this.values, {this.resumeTo});
  final bool success;
  final List<dynamic> values;
  final Frame resumeTo;

  String toString() {
    return success ? values.map(Context.luaToString).join(", ") : values[0];
  }
}
