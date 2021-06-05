

import 'package:hydro_sdk/swid/ir/swidIr.dart';

abstract class SwidFrontend {
  final List<String> inputs;

  const SwidFrontend({
    required this.inputs,
  });

  Future<List<SwidIr>> produceIr();
}
