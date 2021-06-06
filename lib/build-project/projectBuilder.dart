import 'package:hydro_sdk/build-project/componentBuilder.dart';
import 'package:hydro_sdk/projectConfig/projectConfig.dart';

class ProjectBuilder {
  final ProjectConfig projectConfig;
  final String? ts2hc;
  final String? cacheDir;
  final String? profile;
  final String? outDir;
  final String signingKey;

  const ProjectBuilder({
    required this.projectConfig,
    required this.ts2hc,
    required this.cacheDir,
    required this.profile,
    required this.signingKey,
    this.outDir = "",
  });

  Future<bool> build({
    required bool signManifest,
  }) async {
    try {
      print("Building project ${projectConfig.project}");

      for (var component in projectConfig.components) {
        var componentBuilder = ComponentBuilder(
          projectConfigComponent: component,
          ts2hc: ts2hc,
          cacheDir: cacheDir,
          profile: profile,
          outDir: outDir,
          signingKey: signingKey,
        );

        var res = await componentBuilder.build(
          signManifest: signManifest,
        );

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
