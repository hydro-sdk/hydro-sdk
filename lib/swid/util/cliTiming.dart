import 'dart:async';

import 'package:cli_util/cli_logging.dart';

FutureOr<T> CliTiming<T>({
  required final Logger logger,
  required final String message,
  required final FutureOr<T> Function() fun,
}) async {
  final progress = logger.progress(message);

  final res = await fun();

  progress.finish(
    showTiming: true,
  );

  return res;
}
