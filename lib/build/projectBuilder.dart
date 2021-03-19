import 'package:hydro_sdk/build/componentBuilder.dart';
import 'package:meta/meta.dart';
import 'package:hydro_sdk/projectConfig/projectConfig.dart';

class ProjectBuilder {
  final ProjectConfig projectConfig;
  final String ts2hc;
  final String cacheDir;
  final String profile;

  const ProjectBuilder({
    @required this.projectConfig,
    @required this.ts2hc,
    @required this.cacheDir,
    @required this.profile,
  });

  Future<bool> build() async {
    try {
      print("Building project ${projectConfig.project}");

      for (var component in projectConfig.components) {
        var componentBuilder = ComponentBuilder(
          projectConfigComponent: component,
          ts2hc: ts2hc,
          cacheDir: cacheDir,
          profile: profile,
        );

        var res = await componentBuilder.build();

        if (!res) {
          return false;
        }
      }
      await Future.delayed(Duration(seconds: 1));
    } catch (err) {
      print(err);
      return false;
    }

    return true;
  }
}
