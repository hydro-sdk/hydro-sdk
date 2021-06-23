import 'package:flutter/services.dart';

import 'package:hydro_sdk/cfr/lasm/nativeThunk.dart';
import 'package:hydro_sdk/cfr/linkStatus.dart';
import 'package:hydro_sdk/hydroState.dart';

Future<HydroFunctionImpl> loadFileFromBundle({
  required HydroState hydroState,
  required String path,
  required LinkStatus linkStatus,
  required Map<String, NativeThunk> thunks,
}) async {
  var val = await hydroState.loadBuffer(
      buffer: (await rootBundle.load(path)).buffer.asUint8List(),
      name: path,
      thunks: thunks,
      linkStatus: linkStatus);
  hydroState.dispatchContext = DispatchContext(dispatchContext: val);
  return val;
}
