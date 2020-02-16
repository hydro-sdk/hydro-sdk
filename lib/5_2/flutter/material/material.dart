import 'package:flua/5_2/flutter/material/appBar.dart';
import 'package:flua/5_2/flutter/material/flatButton.dart';
import 'package:flua/5_2/flutter/material/floatingActionButton.dart';
import 'package:flua/5_2/flutter/material/materialApp.dart';
import 'package:flua/5_2/flutter/material/scaffold.dart';
import 'package:flua/5_2/table.dart';

loadMaterial(Table table) {
  var material = Table();

  table["material"] = material;

  loadScaffold(material);
  loadAppBar(material);
  loadFlatButton(material);
  loadMaterialApp(material);
  loadFloatingActionButton(material);
}
