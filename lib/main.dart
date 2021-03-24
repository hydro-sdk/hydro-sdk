import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hydro_sdk/runComponent/runComponent.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const RunComponent(
    project: "example-project",
    component: "counter-example",
  ));
}
