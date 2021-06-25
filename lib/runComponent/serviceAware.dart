part of hydro_sdk.run_component;

enum RunProjectResponseKind {
  kReady,
  kBuilding,
  kUnavailable,
}

mixin ServiceAware {
  String? _debugBaseUrl({
    required int port,
  }) =>
      kDebugMode
          ? Platform.isAndroid
              ? "http://10.0.2.2:${port}"
              : "http://127.0.0.1:${port}"
          : null;

  String? _debugComponentUrl({
    required int port,
    required String project,
    required String component,
  }) =>
      kDebugMode
          ? [
              _debugBaseUrl(port: port),
              "/",
              project,
              "/",
              component,
            ].join("")
          : null;

  String? _debugPackageAvailabilityUrl({
    required String project,
    required String component,
    required int port,
  }) =>
      kDebugMode
          ? [
              _debugBaseUrl(port: port),
              "/",
              "available",
              "/",
              project,
              "/",
              component
            ].join("")
          : null;

  Future<RunProjectResponseKind?> _debugPackageAvailable({
    required String project,
    required String component,
    required int port,
  }) async {
    if (kDebugMode) {
      try {
        final response = await get(Uri.parse(_debugPackageAvailabilityUrl(
                project: project, component: component, port: port) ??
            ""));
        if (response.statusCode == 204) {
          return RunProjectResponseKind.kReady;
        } else if (response.statusCode == 503) {
          return RunProjectResponseKind.kBuilding;
        } else {
          return RunProjectResponseKind.kUnavailable;
        }
      } catch (err) {
        print(err);
        return RunProjectResponseKind.kUnavailable;
      }
    }
    return null;
  }

  Future<String?> _downloadDebugPackageHash({
    required int port,
    required String project,
    required String component,
  }) async {
    if (kDebugMode) {
      try {
        final response = await get(Uri.parse([
          _debugComponentUrl(
            port: port,
            project: project,
            component: component,
          ),
          ".ota.sha256",
        ].join("")));
        if (response.statusCode == 200) {
          return response.body;
        }
      } catch (err) {
        print(err);
        return null;
      }
      return null;
    }
    return null;
  }

  Future<Uint8List?> _downloadDebugPackage({
    required int port,
    required String project,
    required String component,
  }) async {
    if (kDebugMode) {
      try {
        final response = await get(Uri.parse([
          _debugComponentUrl(
            port: port,
            project: project,
            component: component,
          ),
          ".ota",
        ].join("")));
        if (response.statusCode == 200) {
          return response.bodyBytes;
        }
      } catch (err) {
        print(err);
        return null;
      }
      return null;
    }
    return null;
  }
}
