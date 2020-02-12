import 'package:flua/5_2/table.dart' as l;

loadStatelessWidget(l.Table table) {
  var $StatelessWidget = l.Table();

  $StatelessWidget["prototype"] = l.Table();
  $StatelessWidget["prototype"]["____constructor"] = (List<dynamic> args) {
    print("called ctor");
    print(args);
  };

  $StatelessWidget["____constructor"] = (List<dynamic> args) {
    print("called ctor");
    print(args);
  };
  table["StatelessWidget"] = $StatelessWidget;
}
