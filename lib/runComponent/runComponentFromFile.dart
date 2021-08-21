part of hydro_sdk.run_component;

class RunComponentFromFile extends StatefulWidget {
  final String component;
  final String path;
  final Map<String, Prototype Function({CodeDump? codeDump, Prototype? parent})>
      thunks;
  final Widget loading;

  const RunComponentFromFile({
    required this.component,
    required this.path,
    this.loading = const Center(
      child: CircularProgressIndicator(),
    ),
    this.thunks = const {},
  });

  @override
  _RunComponentFromFileState createState() => _RunComponentFromFileState();
}

class _RunComponentFromFileState extends State<RunComponentFromFile>
    with HotReloadable, PreloadableCustomNamespaces, ReloadableMountableChunk {
  List<dynamic>? args;

  @override
  initState() {
    super.initState();

    File(widget.path).readAsBytes().then((value) async {
      await maybeReloadMountableChunk(
        rawPackage: value,
        component: widget.component,
        thunks: widget.thunks,
      );
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
