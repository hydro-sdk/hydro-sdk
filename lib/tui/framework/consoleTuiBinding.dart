import 'package:dart_console/dart_console.dart' as console;

import 'package:hydro_sdk/tui/framework/tuiBinding.dart' as tui;

class ConsoleTuiKeyBinding implements tui.Key {
  final console.Key _key;

  bool get isControl => _key.isControl;

  String get char => _key.char;

  tui.ControlCharacter get controlChar =>
      ConsoleTuiBinding.controlCharacterToTuiControlCharacter(
        controlCharacter: _key.controlChar,
      );

  ConsoleTuiKeyBinding._(final this._key);

  @override
  String toString() => _key.toString();

  @override
  int get hashCode => _key.hashCode;
}

class ConsoleTuiCoordinateBinding implements tui.Coordinate {
  final console.Coordinate _coordinate;

  int get row => _coordinate.row;

  int get col => _coordinate.col;

  ConsoleTuiCoordinateBinding._(final this._coordinate);

  static ConsoleTuiCoordinateBinding? _fromConsoleCoordinate(
          console.Coordinate? coordinate) =>
      coordinate != null ? ConsoleTuiCoordinateBinding._(coordinate) : null;

  @override
  String toString() => _coordinate.toString();

  @override
  int get hashCode => _coordinate.hashCode;
}

class ConsoleTuiBinding implements tui.TuiBinding {
  final _console = console.Console();

  static void initialize() => tui.TuiBinding.instance = ConsoleTuiBinding();

  static tui.TextAlignment textAlignmentToTuiTextAlignment(
    final console.TextAlignment textAlignment,
  ) {
    switch (textAlignment) {
      case console.TextAlignment.left:
        return tui.TextAlignment.left;
      case console.TextAlignment.center:
        return tui.TextAlignment.center;
      case console.TextAlignment.right:
        return tui.TextAlignment.right;
    }
  }

  static console.TextAlignment textAlignmentToConsoleTextAlignment(
    final tui.TextAlignment textAlignment,
  ) {
    switch (textAlignment) {
      case tui.TextAlignment.left:
        return console.TextAlignment.left;
      case tui.TextAlignment.center:
        return console.TextAlignment.center;
      case tui.TextAlignment.right:
        return console.TextAlignment.right;
    }
  }

  static tui.ControlCharacter controlCharacterToTuiControlCharacter({
    required final console.ControlCharacter controlCharacter,
  }) {
    switch (controlCharacter) {
      case console.ControlCharacter.none:
        return tui.ControlCharacter.none;
      case console.ControlCharacter.ctrlA:
        return tui.ControlCharacter.ctrlA;
      case console.ControlCharacter.ctrlB:
        return tui.ControlCharacter.ctrlB;
      case console.ControlCharacter.ctrlC:
        return tui.ControlCharacter.ctrlC;
      case console.ControlCharacter.ctrlD:
        return tui.ControlCharacter.ctrlD;
      case console.ControlCharacter.ctrlE:
        return tui.ControlCharacter.ctrlE;
      case console.ControlCharacter.ctrlF:
        return tui.ControlCharacter.ctrlF;
      case console.ControlCharacter.ctrlG:
        return tui.ControlCharacter.ctrlG;
      case console.ControlCharacter.ctrlH:
        return tui.ControlCharacter.ctrlH;
      case console.ControlCharacter.tab:
        return tui.ControlCharacter.tab;
      case console.ControlCharacter.ctrlJ:
        return tui.ControlCharacter.ctrlJ;
      case console.ControlCharacter.ctrlK:
        return tui.ControlCharacter.ctrlK;
      case console.ControlCharacter.ctrlL:
        return tui.ControlCharacter.ctrlL;
      case console.ControlCharacter.enter:
        return tui.ControlCharacter.enter;
      case console.ControlCharacter.ctrlN:
        return tui.ControlCharacter.ctrlN;
      case console.ControlCharacter.ctrlO:
        return tui.ControlCharacter.ctrlO;
      case console.ControlCharacter.ctrlP:
        return tui.ControlCharacter.ctrlP;
      case console.ControlCharacter.ctrlQ:
        return tui.ControlCharacter.ctrlQ;
      case console.ControlCharacter.ctrlR:
        return tui.ControlCharacter.ctrlR;
      case console.ControlCharacter.ctrlS:
        return tui.ControlCharacter.ctrlS;
      case console.ControlCharacter.ctrlT:
        return tui.ControlCharacter.ctrlT;
      case console.ControlCharacter.ctrlU:
        return tui.ControlCharacter.ctrlU;
      case console.ControlCharacter.ctrlV:
        return tui.ControlCharacter.ctrlV;
      case console.ControlCharacter.ctrlW:
        return tui.ControlCharacter.ctrlW;
      case console.ControlCharacter.ctrlX:
        return tui.ControlCharacter.ctrlX;
      case console.ControlCharacter.ctrlY:
        return tui.ControlCharacter.ctrlY;
      case console.ControlCharacter.ctrlZ:
        return tui.ControlCharacter.ctrlZ;
      case console.ControlCharacter.arrowLeft:
        return tui.ControlCharacter.arrowLeft;
      case console.ControlCharacter.arrowRight:
        return tui.ControlCharacter.arrowRight;
      case console.ControlCharacter.arrowUp:
        return tui.ControlCharacter.arrowUp;
      case console.ControlCharacter.arrowDown:
        return tui.ControlCharacter.arrowDown;
      case console.ControlCharacter.pageUp:
        return tui.ControlCharacter.pageUp;
      case console.ControlCharacter.pageDown:
        return tui.ControlCharacter.pageDown;
      case console.ControlCharacter.wordLeft:
        return tui.ControlCharacter.wordLeft;
      case console.ControlCharacter.wordRight:
        return tui.ControlCharacter.wordRight;
      case console.ControlCharacter.home:
        return tui.ControlCharacter.home;
      case console.ControlCharacter.end:
        return tui.ControlCharacter.end;
      case console.ControlCharacter.escape:
        return tui.ControlCharacter.escape;
      case console.ControlCharacter.delete:
        return tui.ControlCharacter.delete;
      case console.ControlCharacter.backspace:
        return tui.ControlCharacter.backspace;
      case console.ControlCharacter.wordBackspace:
        return tui.ControlCharacter.wordBackspace;
      case console.ControlCharacter.F1:
        return tui.ControlCharacter.F1;
      case console.ControlCharacter.F2:
        return tui.ControlCharacter.F2;
      case console.ControlCharacter.F3:
        return tui.ControlCharacter.F3;
      case console.ControlCharacter.F4:
        return tui.ControlCharacter.F4;
      case console.ControlCharacter.unknown:
        return tui.ControlCharacter.unknown;
    }
  }

  static console.ControlCharacter controlCharacterToConsoleControlCharacter({
    required final tui.ControlCharacter controlCharacter,
  }) {
    switch (controlCharacter) {
      case tui.ControlCharacter.none:
        return console.ControlCharacter.none;
      case tui.ControlCharacter.ctrlA:
        return console.ControlCharacter.ctrlA;
      case tui.ControlCharacter.ctrlB:
        return console.ControlCharacter.ctrlB;
      case tui.ControlCharacter.ctrlC:
        return console.ControlCharacter.ctrlC;
      case tui.ControlCharacter.ctrlD:
        return console.ControlCharacter.ctrlD;
      case tui.ControlCharacter.ctrlE:
        return console.ControlCharacter.ctrlE;
      case tui.ControlCharacter.ctrlF:
        return console.ControlCharacter.ctrlF;
      case tui.ControlCharacter.ctrlG:
        return console.ControlCharacter.ctrlG;
      case tui.ControlCharacter.ctrlH:
        return console.ControlCharacter.ctrlH;
      case tui.ControlCharacter.tab:
        return console.ControlCharacter.tab;
      case tui.ControlCharacter.ctrlJ:
        return console.ControlCharacter.ctrlJ;
      case tui.ControlCharacter.ctrlK:
        return console.ControlCharacter.ctrlK;
      case tui.ControlCharacter.ctrlL:
        return console.ControlCharacter.ctrlL;
      case tui.ControlCharacter.enter:
        return console.ControlCharacter.enter;
      case tui.ControlCharacter.ctrlN:
        return console.ControlCharacter.ctrlN;
      case tui.ControlCharacter.ctrlO:
        return console.ControlCharacter.ctrlO;
      case tui.ControlCharacter.ctrlP:
        return console.ControlCharacter.ctrlP;
      case tui.ControlCharacter.ctrlQ:
        return console.ControlCharacter.ctrlQ;
      case tui.ControlCharacter.ctrlR:
        return console.ControlCharacter.ctrlR;
      case tui.ControlCharacter.ctrlS:
        return console.ControlCharacter.ctrlS;
      case tui.ControlCharacter.ctrlT:
        return console.ControlCharacter.ctrlT;
      case tui.ControlCharacter.ctrlU:
        return console.ControlCharacter.ctrlU;
      case tui.ControlCharacter.ctrlV:
        return console.ControlCharacter.ctrlV;
      case tui.ControlCharacter.ctrlW:
        return console.ControlCharacter.ctrlW;
      case tui.ControlCharacter.ctrlX:
        return console.ControlCharacter.ctrlX;
      case tui.ControlCharacter.ctrlY:
        return console.ControlCharacter.ctrlY;
      case tui.ControlCharacter.ctrlZ:
        return console.ControlCharacter.ctrlZ;
      case tui.ControlCharacter.arrowLeft:
        return console.ControlCharacter.arrowLeft;
      case tui.ControlCharacter.arrowRight:
        return console.ControlCharacter.arrowRight;
      case tui.ControlCharacter.arrowUp:
        return console.ControlCharacter.arrowUp;
      case tui.ControlCharacter.arrowDown:
        return console.ControlCharacter.arrowDown;
      case tui.ControlCharacter.pageUp:
        return console.ControlCharacter.pageUp;
      case tui.ControlCharacter.pageDown:
        return console.ControlCharacter.pageDown;
      case tui.ControlCharacter.wordLeft:
        return console.ControlCharacter.wordLeft;
      case tui.ControlCharacter.wordRight:
        return console.ControlCharacter.wordRight;
      case tui.ControlCharacter.home:
        return console.ControlCharacter.home;
      case tui.ControlCharacter.end:
        return console.ControlCharacter.end;
      case tui.ControlCharacter.escape:
        return console.ControlCharacter.escape;
      case tui.ControlCharacter.delete:
        return console.ControlCharacter.delete;
      case tui.ControlCharacter.backspace:
        return console.ControlCharacter.backspace;
      case tui.ControlCharacter.wordBackspace:
        return console.ControlCharacter.wordBackspace;
      case tui.ControlCharacter.F1:
        return console.ControlCharacter.F1;
      case tui.ControlCharacter.F2:
        return console.ControlCharacter.F2;
      case tui.ControlCharacter.F3:
        return console.ControlCharacter.F3;
      case tui.ControlCharacter.F4:
        return console.ControlCharacter.F4;
      case tui.ControlCharacter.unknown:
        return console.ControlCharacter.unknown;
    }
  }

  int get windowWidth => _console.windowWidth;

  void showCursor() => _console.showCursor();

  void hideCursor() => _console.hideCursor();

  void cursorUp() => _console.cursorUp();

  void writeLine([
    String? text,
    tui.TextAlignment alignment = tui.TextAlignment.left,
  ]) =>
      _console.writeLine(text, textAlignmentToConsoleTextAlignment(alignment));

  void write(final String text) => _console.write(text);

  void eraseLine() => _console.eraseLine();

  tui.Key readKey() => ConsoleTuiKeyBinding._(_console.readKey());

  tui.Coordinate? get cursorPosition =>
      ConsoleTuiCoordinateBinding._fromConsoleCoordinate(
        _console.cursorPosition,
      );

  set cursorPosition(tui.Coordinate? cursor) => _console.cursorPosition;

  void eraseCursorToEnd() => _console.eraseCursorToEnd();

  void resetColorAttributes() => _console.resetColorAttributes();

  tui.Coordinate instantiateCoordinate(final int row, final int col) =>
      ConsoleTuiCoordinateBinding._fromConsoleCoordinate(
        console.Coordinate(row, col),
      )!;

  tui.Key instantiatePrintableKey(final String char) =>
      ConsoleTuiKeyBinding._(console.Key.printable(char));

  tui.Key instantiateControlKey(final tui.ControlCharacter controlChar) =>
      ConsoleTuiKeyBinding._(
        console.Key.control(
          ConsoleTuiBinding.controlCharacterToConsoleControlCharacter(
            controlCharacter: controlChar,
          ),
        ),
      );
}
