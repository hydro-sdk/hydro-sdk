import 'package:hydro_sdk/cfr/coroutine/coroutineresult.dart';
import 'package:hydro_sdk/cfr/lasm/nativeThunk.dart';
import 'package:hydro_sdk/cfr/linkStatus.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/loadFileFromBundle.dart';

Future<CoroutineResult> doFileFromBundle(
    {required HydroState hydroState,
    required String path,
    required Map<String, NativeThunk> thunks,
    List<dynamic> args = const []}) async {
  var linkStatus = LinkStatus();

  HydroFunctionImpl val = await loadFileFromBundle(
    hydroState: hydroState,
    path: path,
    linkStatus: linkStatus,
    thunks: thunks,
  );
  print(
      "I/Hydro ${linkStatus.nativePrototypes} native, ${linkStatus.virtualPrototypes} virtual prototypes");
  return val.pcall(args, parentState: hydroState);
}
