import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/key.dart';
import 'package:flua/5_2/flutter/material/material.dart';
import 'package:flua/5_2/flutter/package/package.dart';
import 'package:flua/5_2/flutter/painting/painting.dart';
import 'package:flua/5_2/flutter/widgets/widgets.dart';
import 'package:flua/5_2/table.dart';

loadFlutterLib(Context ctx) {
  var flutter = Table();

  ctx.env["flutter"] = flutter;

  loadKey(flutter);
  loadMaterial(flutter);
  loadPackage(flutter);
  loadWidgets(flutter);
  loadPainting(flutter);
}
