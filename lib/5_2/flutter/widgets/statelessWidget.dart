import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/widgets.dart';

class MagicStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Magic widget");
  }
}

loadStatelessWidget(l.Table table) {
  var $StatelessWidget = l.Table();

  $StatelessWidget["prototype"] = l.Table();
  $StatelessWidget["prototype"]["____constructor"] = (List<dynamic> args) {
    print("called ctor");
    print((args[0] as l.Table).map.keys.toList());
    print((args[0] as l.Table).metatable.map.keys.toList()[0].runtimeType);
    args[0] = MagicStatelessWidget();
    return [MagicStatelessWidget()];
  };

  // $StatelessWidget["prototype"]["keys"] = (List<dynamic>args){
  //   print($StatelessWidget["prototype"].map.keys.toList());
  //   return [$StatelessWidget.map.keys.toList()];
  // };

  $StatelessWidget["____constructor"] = (List<dynamic> args) {
    print("called ctor2");
    print(args);
    return [];
  };
  table["StatelessWidget"] = $StatelessWidget;
}
