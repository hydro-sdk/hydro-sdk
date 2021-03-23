part of hydro_sdk.run_component;

Future<String> _downloadDebugPackageHash({
  @required int port,
  @required String project,
  @required String component,
}) async {
  if (kDebugMode) {
    try {
      final response = await get([
        _debugComponentUrl(
          port: port,
          project: project,
          component: component,
        ),
        ".ota.sha256",
      ].join(""));
      if (response?.statusCode == 200) {
        return response?.body;
      }
    } catch (err) {
      print(err);
      return null;
    }
    return null;
  }
  return null;
}

Future<Uint8List> _downloadDebugPackage({
  @required int port,
  @required String project,
  @required String component,
}) async {
  if (kDebugMode) {
    try {
      final response = await get([
        _debugComponentUrl(
          port: port,
          project: project,
          component: component,
        ),
        ".ota",
      ].join(""));
      if (response?.statusCode == 200) {
        return response?.bodyBytes;
      }
    } catch (err) {
      print(err);
      return null;
    }
    return null;
  }
  return null;
}