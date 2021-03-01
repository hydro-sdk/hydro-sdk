import 'package:hydro_sdk/swid/ir/swidIr.dart';
import 'package:meta/meta.dart';

abstract class SwidFrontend {
  final List<String> inputs;

  const SwidFrontend({
    @required this.inputs,
  });

  Future<List<SwidIr>> produceIr();
}
