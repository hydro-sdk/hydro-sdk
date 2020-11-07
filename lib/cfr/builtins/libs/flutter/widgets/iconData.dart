import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';
import 'package:hydro_sdk/hydroState.dart';

class RTManagedIconData extends IconData implements Box<IconData> {
  RTManagedIconData(int codePoint,
      {String fontFamily,
      String fontPackage,
      bool matchTextDirection,
      @required this.table,
      @required this.hydroState})
      : super(codePoint,
            fontFamily: fontFamily,
            fontPackage: fontPackage,
            matchTextDirection: matchTextDirection) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['_dart_hashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.hashCode];
    });
    table['_dart_toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  IconData unwrap() => this;
  IconData get vmObject => this;
  @override
  int get hashCode {
    Closure closure = table["hashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadIconData(
    {@required HydroState hydroState, @required HydroTable table}) {
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
}
