import 'package:hydro_sdk/cfr/buildProfile.dart';
import 'package:hydro_sdk/cfr/moduleDebugInfo.dart';
import 'package:hydro_sdk/cfr/util.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:hydro_sdk/cfr/vm/symbolWithDistance.dart';

class HydroError {
  HydroError({
    required this.errMsg,
    required Frame frame,
    required this.inst,
    required this.dartStackTrace,
  }) : _frames = [frame];
  final String errMsg;
  List<Frame> _frames;
  final int inst;
  final StackTrace dartStackTrace;
  List<ModuleDebugInfo> _extractedSymbols = [];
  List<ModuleDebugInfo> get extractedSymbols => _extractedSymbols;

  void addFrame({required Frame frame}) => _frames = [..._frames, frame];

  void _symbolicateFrame(
      {required List<ModuleDebugInfo>? symbols, required Frame frame}) {
    if (symbols != null) {
      int? moduleLineNumber = maybeAt(frame.prototype.lines, inst);

      if (moduleLineNumber != null) {
        List<SymbolWithDistance> symbolsWithDistance = symbols
            .map((e) => SymbolWithDistance(
                distance: moduleLineNumber - (e.lineStart ?? 0),
                moduleDebugInfo: e))
            .toList();
        symbolsWithDistance.removeWhere((element) => element.distance < 0);
        symbolsWithDistance.sort((a, b) => a.distance.compareTo(b.distance));

        if (symbolsWithDistance.isNotEmpty) {
          ModuleDebugInfo closestSymbol =
              symbolsWithDistance[0].moduleDebugInfo;

          _extractedSymbols.add(closestSymbol);
        }
      }
    }
  }

  void addSymbolicatedStackTrace({required List<ModuleDebugInfo>? symbols}) {
    _frames.forEach((x) {
      if (x.prototype.buildProfile == BuildProfile.debug) {
        _symbolicateFrame(frame: x, symbols: symbols);
      }
    });
  }

  String toString() {
    var res = "";
    res += "$errMsg\n";
    if (_extractedSymbols.isNotEmpty) {
      res += "Error raised in: \n";

      _extractedSymbols.forEach((element) {
        res += "  ${element.symbolName}\n";

        if (element.originalFileName != "lualib_bundle") {
          res +=
              "     defined in ${element.originalFileName}:${element.originalLineStart}\n";
        } else {
          res += "    <generated function>\n";
        }
      });
    }
    res += "VM stacktrace follows:\n";
    _frames.forEach((element) {
      res +=
          "${element.prototype.source}:${maybeAt(element.prototype.lines, element.programCounter - 1)}\n";
      res +=
          "  (${element.prototype.debugSymbol?.symbolFullyQualifiedMangleName})\n";
    });

    res += "Dart stacktrace follows:\n";
    res += dartStackTrace.toString();
    return res;
  }
}
