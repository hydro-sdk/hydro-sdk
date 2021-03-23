part of hydro_sdk.run_component;

String _debugBaseUrl({
  @required int port,
}) =>
    kDebugMode
        ? Platform.isAndroid
            ? "http://10.0.2.2:${port}"
            : "http://127.0.0.1:${port}"
        : null;

String _debugComponentUrl({
  @required int port,
  @required String project,
  @required String component,
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