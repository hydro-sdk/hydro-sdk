import 'dart:typed_data';

import 'package:hydro_sdk/cfr/buildProfile.dart';
import 'package:hydro_sdk/cfr/decode/codedump.dart';
import 'package:hydro_sdk/cfr/moduleDebugInfo.dart';
import 'package:hydro_sdk/cfr/thread/threadResult.dart';
import 'package:hydro_sdk/cfr/vm/const.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:hydro_sdk/cfr/vm/inst.dart';
import 'package:hydro_sdk/cfr/vm/local.dart';
import 'package:hydro_sdk/cfr/vm/upvaldef.dart';

class Prototype {
  Prototype(this.root);
  final CodeDump? root;
  Prototype? parent;
  String? hash;
  String? name;
  int? lineStart;
  int? lineEnd;
  int? params;
  int? varag;
  int? registers;
  InstBlock? code;
  Int32List? rawCode;
  List<Const>? constants;
  Iterable<Const>? constantScope;
  List<Prototype>? prototypes;
  late List<UpvalDef> upvals;
  String? source;
  List<int>? lines;
  late List<Local> locals;
  ModuleDebugInfo? debugSymbol;
  ThreadResult Function({required Frame frame, required Prototype prototype})?
      interpreter;

  Prototype? findPrototypeByDebugSymbol({required ModuleDebugInfo? symbol}) {
    if (debugSymbol != null &&
        symbol != null &&
        debugSymbol!.symbolFullyQualifiedMangleName ==
            symbol.symbolFullyQualifiedMangleName) {
      return this;
    } else {
      if (prototypes != null && prototypes!.isNotEmpty) {
        for (var i = 0; i != prototypes!.length; ++i) {
          var target =
              prototypes![i].findPrototypeByDebugSymbol(symbol: symbol);
          if (target != null) {
            return target;
          }
        }
      }
    }
    return null;
  }

  List<int> opCodeRange() {
    return code!.list
        .map((x) {
          return x.OP;
        })
        .toList()
        .cast<int>()
        .toSet()
        .toList();
  }

  BuildProfile get topBuildProfile {
    if (lineStart == null ||
        lineEnd == null ||
        lines == null ||
        lines!.isEmpty) {
      return BuildProfile.release;
    } else {
      return BuildProfile.debug;
    }
  }

  BuildProfile get buildProfile {
    int debugProtos = 0;
    int releaseProtos = 0;
    int mixedProtos = 0;

    if (prototypes == null || prototypes!.isEmpty) {
      return topBuildProfile;
    } else {
      prototypes!.forEach((x) {
        if (x.buildProfile == BuildProfile.debug) {
          debugProtos++;
        } else if (x.buildProfile == BuildProfile.release) {
          releaseProtos++;
        } else if (x.buildProfile == BuildProfile.mixed) {
          mixedProtos++;
        }
      });

      if (mixedProtos != 0) {
        return BuildProfile.mixed;
      }

      if (releaseProtos == 0 && topBuildProfile == BuildProfile.release) {
        return BuildProfile.mixed;
      } else if (debugProtos == 0 && topBuildProfile == BuildProfile.debug) {
        return BuildProfile.mixed;
      } else if (debugProtos == 0 &&
          releaseProtos > 0 &&
          topBuildProfile == BuildProfile.release) {
        return BuildProfile.release;
      } else if (debugProtos > 0 &&
          releaseProtos == 0 &&
          topBuildProfile == BuildProfile.debug) {
        return BuildProfile.debug;
      }
      return topBuildProfile;
    }
  }
}
