import 'package:flutter/services.dart';
import 'package:meta/meta.dart';
import 'package:hydro_sdk/cfr/decode/decoder.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/hydroFunction.dart';
import 'package:hydro_sdk/cfr/vm/upVal.dart';
import 'package:hydro_sdk/hydroState.dart';

Future<HydroFunction> loadFileFromBundle({
  @required HydroState hydroState,
  @required String path,
}) async {
  var contents = await rootBundle.load(path);
  var decoder = Decoder(contents.buffer);
  var dump = decoder.readCodeDump(
      name: path, linkStatus: null, dump: null, thunks: null);

  return HydroFunctionImpl(Closure(dump.main,
      context: hydroState.context, upvalues: [Upval.store(hydroState.context.env)]));
}
