import 'dart:convert';

import 'package:hydro_sdk/cfr/buildProfile.dart';
import 'package:hydro_sdk/cfr/moduleDebugInfo.dart';
import 'package:hydro_sdk/cfr/moduleDebugInfoRaw.dart';
import 'package:hydro_sdk/cfr/util.dart';
import 'package:hydro_sdk/cfr/vm/symbolWithDistance.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:meta/meta.dart';

class HydroError {
  HydroError(
      {@required this.errMsg,
      @required Frame frame,
      @required this.inst,
      @required this.dartStackTrace})
      : _frames = [frame];
  final String errMsg;
  List<Frame> _frames;
  final int inst;
  final StackTrace dartStackTrace;
  List<ModuleDebugInfo> _extractedSymbols = [];
  List<ModuleDebugInfo> get extractedSymbols => _extractedSymbols;

  void addFrame({@required Frame frame}) => _frames = [..._frames, frame];

  void _symbolicateFrame(
      {@required ModuleDebugInfoRaw moduleDebugInfoRaw,
      @required Frame frame}) {
    if (moduleDebugInfoRaw?.raw != null) {
      List<ModuleDebugInfo> symbols = json
          .decode(moduleDebugInfoRaw.raw)
          ?.map((x) => ModuleDebugInfo.fromJson(x))
          ?.toList()
          ?.cast<ModuleDebugInfo>();

      int moduleLineNumber = maybeAt(frame.prototype.lines, inst);

      if (moduleLineNumber != null) {
        List<SymbolWithDistance> symbolsWithDistance = symbols
            .map((e) => SymbolWithDistance(
                distance: moduleLineNumber - (e?.lineStart ?? 0),
                moduleDebugInfo: e))
            ?.toList();
        symbolsWithDistance.removeWhere((element) => element.distance < 0);
        symbolsWithDistance.sort((a, b) => a.distance.compareTo(b.distance));

        ModuleDebugInfo closestSymbol = symbolsWithDistance[0].moduleDebugInfo;

        _extractedSymbols.add(closestSymbol);
      }
    }
  }

  void addSymbolicatedStackTrace(
      {@required ModuleDebugInfoRaw moduleDebugInfoRaw}) {
    _frames.forEach((x) {
      if (x.prototype.buildProfile == BuildProfile.debug) {
        _symbolicateFrame(frame: x, moduleDebugInfoRaw: moduleDebugInfoRaw);
      }
    });
  }

  String toString() {
    var res = "";
    res += "$errMsg\n";
    if (_extractedSymbols?.isNotEmpty ?? false) {
      res += "Error raised in: \n";

      _extractedSymbols?.forEach((element) {
        if (element != null) {
          res += "  ${element.symbolName}\n";

          if (element.originalFileName != "lualib_bundle") {
            res +=
                "     defined in ${element.originalFileName}:${element.originalLineStart}\n";
          } else {
            res += "    <generated function>\n";
          }
        }
      });
    } else {
      _frames.forEach((element) { 
      res +=
          "${element.prototype.source}:${maybeAt(element.prototype.lines, element.programCounter-1)}\n";
      });
    }

    res += "VM stacktrace follows:\n";
    res += dartStackTrace.toString();

    return res;
  }
}
