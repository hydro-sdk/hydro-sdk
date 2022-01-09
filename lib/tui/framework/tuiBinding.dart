enum TextAlignment {
  left,
  center,
  right,
}

enum ControlCharacter {
  none,

  ctrlA,
  ctrlB,
  ctrlC,
  ctrlD,
  ctrlE,
  ctrlF,
  ctrlG,
  ctrlH,
  tab,
  ctrlJ,
  ctrlK,
  ctrlL,
  enter,
  ctrlN,
  ctrlO,
  ctrlP,
  ctrlQ,
  ctrlR,
  ctrlS,
  ctrlT,
  ctrlU,
  ctrlV,
  ctrlW,
  ctrlX,
  ctrlY,
  ctrlZ,

  arrowLeft,
  arrowRight,
  arrowUp,
  arrowDown,
  pageUp,
  pageDown,
  wordLeft,
  wordRight,

  home,
  end,
  escape,
  delete,
  backspace,
  wordBackspace,

  F1,
  F2,
  F3,
  F4,

  unknown
}

abstract class Key {
  bool get isControl;
  String get char;
  ControlCharacter get controlChar;

  factory Key.printable(final String char) =>
      TuiBinding.instance.instantiatePrintableKey(char);

  factory Key.control(final ControlCharacter controlChar) =>
      TuiBinding.instance.instantiateControlKey(controlChar);

  @override
  String toString();
}

abstract class Coordinate {
  int get row;
  int get col;

  factory Coordinate(final int row, final int col) =>
      TuiBinding.instance.instantiateCoordinate(row, col);
}

abstract class TuiKeyBinding {
  Key printable(final String char);
  Key control(final ControlCharacter controlChar);
}

abstract class TuiBinding {
  static TuiBinding get instance {
    if (_instance == null) {
      throw Exception("Tui binding has not been initialized");
    }
    return _instance!;
  }

  static TuiBinding? _instance;

  int get windowWidth;
  void showCursor();
  void hideCursor();
  void cursorUp();
  void writeLine([String? text, TextAlignment alignment = TextAlignment.left]);
  void write(String text);
  void eraseLine();
  Key readKey();
  Coordinate? get cursorPosition;
  set cursorPosition(Coordinate? cursor);
  void eraseCursorToEnd();
  void resetColorAttributes();

  Coordinate instantiateCoordinate(final int row, final int col);
  Key instantiatePrintableKey(final String char);
  Key instantiateControlKey(final ControlCharacter controlChar);
}
