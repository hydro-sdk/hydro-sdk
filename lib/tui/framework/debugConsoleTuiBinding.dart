import 'package:hydro_sdk/tui/framework/tuiBinding.dart' as tui;
import 'package:hydro_sdk/tui/framework/consoleTuiBinding.dart';

class DebugConsoleTuiBinding extends ConsoleTuiBinding
    implements tui.TuiBinding {
  static void initialize() =>
      tui.TuiBinding.instance = DebugConsoleTuiBinding();

  @override
  int get windowWidth => 1000;
}
