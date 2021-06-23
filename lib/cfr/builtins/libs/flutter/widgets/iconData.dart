import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedIconData extends VMManagedBox<IconData> {
  VMManagedIconData({
    required this.table,
    required this.vmObject,
    required this.hydroState,
  }) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['codePoint'] = vmObject.codePoint;
    table['fontFamily'] = vmObject.fontFamily;
    table['fontPackage'] = vmObject.fontPackage;
    table['matchTextDirection'] = vmObject.matchTextDirection;
    table['getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.hashCode];
    });
    table['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final IconData vmObject;
}

class RTManagedIconData extends IconData implements Box<IconData> {
  RTManagedIconData(int codePoint,
      {String? fontFamily,
      String? fontPackage,
      required bool matchTextDirection,
      required this.table,
      required this.hydroState})
      : super(codePoint,
            fontFamily: fontFamily,
            fontPackage: fontPackage,
            matchTextDirection: matchTextDirection) {
    table!['vmObject'] = vmObject;
    table!['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table!['codePoint'] = codePoint;
    table!['fontFamily'] = fontFamily;
    table!['fontPackage'] = fontPackage;
    table!['matchTextDirection'] = matchTextDirection;
    table!['_dart_getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.hashCode];
    });
    table!['_dart_toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.toString()];
    });
  }

  final HydroTable? table;

  final HydroState hydroState;

  IconData unwrap() => this;
  IconData get vmObject => this;
  @override
  int get hashCode {
    Closure closure = table!["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table!["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadIconData({required HydroState hydroState, required HydroTable table}) {
  table['iconData'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedIconData(args[1],
          table: args[0],
          hydroState: hydroState,
          fontFamily: args[2]['fontFamily'],
          fontPackage: args[2]['fontPackage'],
          matchTextDirection: args[2]['matchTextDirection'])
    ];
  });
  registerBoxer<IconData>(boxer: ({
    required IconData vmObject,
    required HydroState hydroState,
    required HydroTable table,
  }) {
    return VMManagedIconData(
      vmObject: vmObject,
      hydroState: hydroState,
      table: table,
    );
  });
}
