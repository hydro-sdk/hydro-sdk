import 'package:flua/builtins/flutter/material/appBar.dart';
import 'package:flua/builtins/flutter/material/card.dart';
import 'package:flua/builtins/flutter/material/flatButton.dart';
import 'package:flua/builtins/flutter/material/floatingActionButton.dart';
import 'package:flua/builtins/flutter/material/iconButton.dart';
import 'package:flua/builtins/flutter/material/materialApp.dart';
import 'package:flua/builtins/flutter/material/popupMenuButton.dart';
import 'package:flua/builtins/flutter/material/popupMenuItem.dart';
import 'package:flua/builtins/flutter/material/scaffold.dart';
import 'package:flua/builtins/flutter/material/theme.dart';
import 'package:flua/builtins/flutter/material/wireupColors.dart';
import 'package:flua/vm/table.dart';

loadMaterial(Table table) {
  var material = Table();

  table["material"] = material;

  loadScaffold(material);
  loadAppBar(material);
  loadFlatButton(material);
  loadMaterialApp(material);
  loadFloatingActionButton(material);
  loadThemeOf(material);
  loadIconButton(material);
  loadCard(material);
  loadWireupColors(material);
  loadPopupMenuButton(material);
  loadPopupMenuItem(material);
}
