part of hydro_sdk.run_component;

class _RunDebugComponent extends StatefulWidget {
  final String project;
  final String component;
  final int port;
  final Widget loading;
  final Map<String, Prototype Function({CodeDump? codeDump, Prototype? parent})>
      thunks;

  const _RunDebugComponent({
    required this.project,
    required this.component,
    required this.thunks,
    required this.port,
    required this.loading,
  });

  @override
  _RunDebugComponentState createState() => _RunDebugComponentState();
}

class _RunDebugComponentState extends State<_RunDebugComponent>
    with
        ServiceAware,
        HotReloadable,
        PreloadableCustomNamespaces,
        ReloadableMountableChunk {
  late Timer timer;
  List<dynamic>? args;

  _RunDebugComponentState() {
    maybeReload();
    timer = Timer.periodic(Duration(milliseconds: 500), (_) => maybeReload());
  }

  Future<void> maybeReload() async {
    if (kDebugMode) {
      if (mounted) {
        var packageAvailability = await _debugPackageAvailable(
            project: widget.project,
            component: widget.component,
            port: widget.port);

        if (packageAvailability == null ||
            packageAvailability == RunProjectResponseKind.kUnavailable) {
          timer.cancel();
          throw new Exception(
              "@${widget.project}/${widget.component} is no longer available for local debugging");
        } else if (packageAvailability == RunProjectResponseKind.kReady) {
          if (mounted) {
            final newHash = await _downloadDebugPackageHash(
              port: widget.port,
              project: widget.project,
              component: widget.component,
            );

            if (newHash == null) {
              return;
            }

            if (newHash != lastHash) {
              setState(() {
                lastHash = newHash;
              });
              final rawPackage = await _downloadDebugPackage(
                  port: widget.port,
                  project: widget.project,
                  component: widget.component);

              if (rawPackage != null) {
                await maybeReloadMountableChunk(
                  rawPackage: rawPackage,
                  component: widget.component,
                  thunks: widget.thunks,
                );
              }
            }
          }
        }
      }
    }
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      if (res == null) {
        return widget.loading;
      } else {
        if (!res!.success) {
          print(res!.values![0]);
        }
        return maybeUnBoxAndBuildArgument<Widget, dynamic>(
            luaState.context!.env["hydro"]["globalBuildResult"].dispatch(
                args != null ? [...args!] : [],
                parentState: luaState)[0],
            parentState: luaState);
      }
    }
    return const SizedBox();
  }
}
