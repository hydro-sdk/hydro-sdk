import 'package:hydro_sdk/build/chunkBuilder.dart';
import 'package:hydro_sdk/build/manifestBuilder.dart';
import 'package:hydro_sdk/build/packageBuilder.dart';
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

  String unpackedOutputPath() => [
        cacheDir,
        path.separator,
        "build",
        path.separator,
        profile,
        path.separator,
        projectConfigComponent.name,
      ].join("");

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
            unpackedOutputPath(),
            path.separator,
            "chunks"
          ].join(""),
        );

        var res = await chunkBuilder.build();

        if (!res) {
          return false;
        }
      }

      var manifestBuilder = ManifestBuilder(
        projectConfigComponent: projectConfigComponent,
        componentBuilder: this,
        ts2hc: ts2hc,
        cacheDir: cacheDir,
        profile: profile,
      );

      var res = await manifestBuilder.build();

      if (!res) {
        return false;
      }

      var packageBuilder = PackageBuilder(
        projectConfigComponent: projectConfigComponent,
        componentBuilder: this,
        ts2hc: ts2hc,
        cacheDir: cacheDir,
        profile: profile,
      );

      res = await packageBuilder.build();

      if (!res) {
        return false;
      }
    } catch (err) {
      print(err);
      return false;
    }

    return true;
  }
}
