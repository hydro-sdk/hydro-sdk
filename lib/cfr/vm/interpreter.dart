import 'package:hydro_sdk/cfr/thread/threadResult.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';

abstract class Interpreter {
  final String name;
  final List<int> opcodeSubset;
  Interpreter({required this.name, required this.opcodeSubset});
  ThreadResult cont({required Frame frame, required Prototype prototype});
}
