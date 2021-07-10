import 'package:path_provider/path_provider.dart';

import 'package:hydro_sdk/otaCacheMgr/directoryProvider.dart';

class MobileDirectoryProvider implements DirectoryProvider {
  const MobileDirectoryProvider();

  Future<String> applicationDocumentsDirectory() async =>
      (await getApplicationDocumentsDirectory()).path;
}
