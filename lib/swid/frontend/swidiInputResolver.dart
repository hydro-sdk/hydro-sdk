import 'dart:io';

import 'package:glob/glob.dart';
import 'package:glob/list_local_fs.dart';

import 'package:hydro_sdk/swid/frontend/inputResolver.dart';

class SwidiInputResolver extends InputResolver {
  const SwidiInputResolver();

  @override
  Future<ResolvedInput> resolveInput({
    required final String input,
  }) async =>
      ResolvedInput.fromList(
          list: await Future.wait(
        Glob(input).listSync().map(
              (x) => File(x.path).readAsString(),
            ),
      ));
}
