import 'dart:async';
import 'dart:io';

import 'package:hydro_sdk/tui/framework/context.dart';

StreamSubscription<ProcessSignal> handleSigint() {
  int sigints = 0;
  return ProcessSignal.sigint.watch().listen((event) async {
    if (++sigints >= 1) {
      Context.reset();
      exit(1);
    }
  });
}
