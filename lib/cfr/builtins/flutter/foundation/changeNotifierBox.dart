import 'package:flutter/material.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';

class ChangeNotifierBox extends ChangeNotifier {
  final HydroTable table;

  ChangeNotifierBox({@required this.table}) {
    table.map["notifyListeners"] = makeLuaDartFunc(func: (List<dynamic> args) {
      notifyListeners();
      return [];
    });
  }
}
