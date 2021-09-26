part of hydro_sdk.run_component;

class RunComponentFromBytes extends StatefulWidget {
  final Uint8List? bytes;
  final String component;
  final Map<String, Prototype Function({CodeDump? codeDump, Prototype? parent})>
      thunks;
  final Widget loading;

  const RunComponentFromBytes({
    required this.bytes,
    required this.component,
    required this.thunks,
    required this.loading,
  });

  @override
  _RunComponentFromBytesState createState() => _RunComponentFromBytesState();
}

class _RunComponentFromBytesState extends State<RunComponentFromBytes>
    with HotReloadable, PreloadableCustomNamespaces, ReloadableMountableChunk {
  List<dynamic>? args;

  @override
  initState() {
    super.initState();

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if (mounted) {
        maybeReloadMountableChunk(
          rawPackage: widget.bytes!,
          component: widget.component,
          thunks: widget.thunks,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
}
