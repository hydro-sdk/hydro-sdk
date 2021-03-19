import 'package:hydro_sdk/build/chunkBuilder.dart';
import 'package:hydro_sdk/projectConfig/projectConfigComponent.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as path;

class ComponentBuilder {
  final ProjectConfigComponent projectConfigComponent;
  final String ts2hc;
  final String cacheDir;
  final String profile;

  const ComponentBuilder({
    @required this.projectConfigComponent,
    @required this.ts2hc,
    @required this.cacheDir,
    @required this.profile,
  });

  Future<bool> build() async {
    try {
      print("Building component ${projectConfigComponent.name}");

      for (var chunk in projectConfigComponent.chunks) {
        var chunkBuilder = ChunkBuilder(
          projectConfigComponentChunk: chunk,
          ts2hc: ts2hc,
          cacheDir: cacheDir,
          profile: profile,
          outDir: [
            cacheDir,
            path.separator,
            "build",
            path.separator,
            projectConfigComponent.name
          ].join(""),
        );

        var res = await chunkBuilder.build();

        if (!res) {
          return false;
        }
      }
    } catch (err) {
      print(err);
      return false;
    }

    return true;
  }
}
