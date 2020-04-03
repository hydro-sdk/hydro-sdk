

import 'package:flua/vm/context.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadRadius(HydroTable table){
  table["radiusElliptical"] = makeLuaDartFunc(func: (List<dynamic>args){
    return [
      Radius.elliptical(args[0].toDouble(), args[1].toDouble())
    ];
  });
}