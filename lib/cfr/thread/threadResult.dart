import 'package:hydro_sdk/cfr/vm/frame.dart';

class ThreadResult {
  final bool success;
  final List<dynamic>? values;
  final Frame? resumeTo;
  const ThreadResult(this.success, this.values, {this.resumeTo});
}
