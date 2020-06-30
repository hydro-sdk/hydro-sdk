import 'package:hydro_sdk/hydroState.dart';
import 'package:meta/meta.dart';
import 'package:hydro_sdk/cfr/coroutine/coroutineresult.dart';
import 'package:hydro_sdk/loadFileFromBundle.dart';

Future<CoroutineResult> doFileFromBundle(
        {@required HydroState hydroState,
        @required String path,
        List<dynamic> args = const []}) async =>
    (await loadFileFromBundle(hydroState: hydroState, path: path)).pcall(args);
