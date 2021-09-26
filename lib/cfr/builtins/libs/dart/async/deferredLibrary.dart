import 'dart:async';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedDeferredLibrary extends VMManagedBox<DeferredLibrary> {
  VMManagedDeferredLibrary(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['libraryName'] = vmObject.libraryName;
    table['uri'] = vmObject.uri;
    table['load'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.load(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final DeferredLibrary vmObject;
}

class RTManagedDeferredLibrary extends DeferredLibrary
    implements Box<DeferredLibrary> {
  RTManagedDeferredLibrary(String libraryName,
      {String? uri, required this.table, required this.hydroState})
      : super(libraryName, uri: uri) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['libraryName'] = libraryName;
    table['uri'] = uri;
    table['_dart_load'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: super.load(), hydroState: hydroState, table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  DeferredLibrary unwrap() => this;
  DeferredLibrary get vmObject => this;
  @override
  Future<Null> load() {
    Closure closure = table["load"];
    return maybeUnBoxAndBuildArgument<Future<Null>, Null>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadDeferredLibrary(
    {required HydroState hydroState, required HydroTable table}) {
  table['deferredLibrary'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedDeferredLibrary(luaCallerArguments[1],
          table: luaCallerArguments[0],
          hydroState: hydroState,
          uri: luaCallerArguments[2]['uri'])
    ];
  });
  registerBoxer<DeferredLibrary>(boxer: (
      {required DeferredLibrary vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedDeferredLibrary(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
