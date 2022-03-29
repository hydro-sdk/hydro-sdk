import 'package:hydro_sdk/cfr/builtins/libs/flutter/physics/boundedFrictionSimulation.dart'
    as _2060;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/physics/clampedSimulation.dart'
    as _3227;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/physics/frictionSimulation.dart'
    as _a634;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/physics/gravitySimulation.dart'
    as _0a48;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/physics/scrollSpringSimulation.dart'
    as _4f12;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/physics/simulation.dart'
    as _ba17;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/physics/springDescription.dart'
    as _396f;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/physics/springSimulation.dart'
    as _ffa7;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/physics/tolerance.dart'
    as _4f31;
import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

void loadphysics(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  final loadphysics = _36c2.HydroTable();
  table['loadphysics'] = loadphysics;
  _ba17.loadSimulation(table: loadphysics, hydroState: hydroState);
  _0a48.loadGravitySimulation(table: loadphysics, hydroState: hydroState);
  _396f.loadSpringDescription(table: loadphysics, hydroState: hydroState);
  _ffa7.loadSpringSimulation(table: loadphysics, hydroState: hydroState);
  _4f12.loadScrollSpringSimulation(table: loadphysics, hydroState: hydroState);
  _a634.loadFrictionSimulation(table: loadphysics, hydroState: hydroState);
  _2060.loadBoundedFrictionSimulation(
      table: loadphysics, hydroState: hydroState);
  _3227.loadClampedSimulation(table: loadphysics, hydroState: hydroState);
  _4f31.loadTolerance(table: loadphysics, hydroState: hydroState);
}
