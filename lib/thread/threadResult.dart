import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/frame.dart';

class ThreadResult {
  ThreadResult(this.success, this.values, {this.resumeTo});
  final bool success;
  final List<dynamic> values;
  final Frame resumeTo;

  String toString() {
    return success ? values.map(Context.luaToString).join(", ") : values[0];
  }
}
