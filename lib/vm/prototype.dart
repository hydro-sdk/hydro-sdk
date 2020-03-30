import 'dart:developer';
import 'dart:typed_data';

import 'package:flua/buildProfile.dart';
import 'package:flua/decode/codedump.dart';
import 'package:flua/reassembler/hashPrototype.dart';
import 'package:flua/vm/const.dart';
import 'package:flua/vm/inst.dart';
import 'package:flua/vm/local.dart';
import 'package:flua/vm/upvaldef.dart';
import 'package:meta/meta.dart';

class Prototype {
  Prototype(this.root);
  final CodeDump root;
  Prototype parent;
  String name;
  int lineStart;
  int lineEnd;
  int params;
  int varag;
  int registers;
  InstBlock code;
  Int32List rawCode;
  List<Const> constants;
  Iterable<Const> constantScope;
  List<Prototype> prototypes;
  List<UpvalDef> upvals;
  String source;
  List<int> lines;
  List<Local> locals;

  Prototype findPrototypeByHash({@required String targetHash}) {
    constants.forEach((x)  {
      if(x.value == "Why is it so fucking slow now"){
        print(this);
        print(hashPrototype(this));
        // debugger();
      }
    });
    if (hashPrototype(this,includeSourceLocations: false) == targetHash) {
      return this;
    } else {
      if (prototypes != null && prototypes.isNotEmpty) {
        for (var i = 0; i != prototypes.length; ++i) {
          var target =
              prototypes[i].findPrototypeByHash(targetHash: targetHash);
          if (target != null) {
            return target;
          }
        }
      }
    }
    return null;
  }

  BuildProfile get topBuildProfile {
    if (lineStart == null ||
        lineEnd == null ||
        lines == null ||
        lines.isEmpty) {
      return BuildProfile.release;
    } else {
      return BuildProfile.debug;
    }
  }

  BuildProfile get buildProfile {
    int debugProtos = 0;
    int releaseProtos = 0;
    int mixedProtos = 0;

    if (prototypes == null || prototypes.isEmpty) {
      return topBuildProfile;
    } else {
      prototypes.forEach((x) {
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
