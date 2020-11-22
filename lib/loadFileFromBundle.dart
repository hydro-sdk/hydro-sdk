import 'package:flutter/services.dart';
import 'package:hydro_sdk/cfr/coroutine/coroutineresult.dart';
import 'package:hydro_sdk/cfr/lasm/nativeThunk.dart';
import 'package:hydro_sdk/cfr/linkStatus.dart';
import 'package:meta/meta.dart';
import 'package:hydro_sdk/cfr/decode/decoder.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/hydroFunction.dart';
import 'package:hydro_sdk/cfr/vm/upVal.dart';
import 'package:hydro_sdk/hydroState.dart';

Future<HydroFunctionImpl> loadFileFromBundle({
  @required HydroState hydroState,
  @required String path,
  @required LinkStatus linkStatus,
  @required Map<String, NativeThunk> thunks,
}) async {
  var val = await hydroState.loadBuffer(
      buffer: (await rootBundle.load(path)).buffer.asUint8List(),
      name: path,
      thunks: thunks,
      linkStatus: linkStatus);
  hydroState.dispatchContext = DispatchContext(dispatchContext: val);
  return val;
}
