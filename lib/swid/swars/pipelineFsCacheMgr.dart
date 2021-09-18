import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/swars/iSwarsPipelineCacheMgr.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';

class PipelineFsCacheMgr implements ISwarsPipelineCacheMgr {
  final String basePath;

  const PipelineFsCacheMgr({
    required this.basePath,
  });

  @override
  Future<void> serializeTermResultsByCacheGroup({
    required final String cacheGroup,
    required final List<Tuple2<String, ISwarsTermResult<dynamic>>> termResults,
  }) async {
    await Directory(basePath).create(
      recursive: true,
    );

    final Map<String, String> results = Map.fromEntries(termResults
        .map((x) => MapEntry(x.item1, x.item2.serialize()))
        .toList());

    await File([
      basePath,
      "${cacheGroup}.json",
    ].join(path.separator))
        .writeAsString(json.encode(results));
  }

  @override
  Future<Map<String, Map<String, dynamic>>> deserializeResults() async {
    if (await Directory(basePath).exists()) {
      final cacheGroups = await Future.wait(
        await Directory(basePath).list().toList().then(
              (value) => value.map(
                (x) async => Tuple2(x.path, await File(x.path).readAsString()),
              ),
            ),
      );

      return Map.fromEntries(
        cacheGroups.map(
          (x) => MapEntry(
            path.basenameWithoutExtension(x.item1),
            json.decode(x.item2) as Map<String, dynamic>,
          ),
        ),
      );
    }

    return {};
  }
}
