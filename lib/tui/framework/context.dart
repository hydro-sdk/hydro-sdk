import 'dart:io';

import 'package:hydro_sdk/tui/framework/tuiBinding.dart';

class Context {
  static void reset() {
    TuiBinding.instance.showCursor();
    TuiBinding.instance.resetColorAttributes();
  }

  final TuiBinding _console = TuiBinding.instance;

  int _renderCount = 0;

  int get renderCount => _renderCount;

  void increaseRenderCount() => _renderCount++;

  void resetRenderCount() => _renderCount = 0;

  int _linesCount = 0;

  int get linesCount => _linesCount;

  void increaseLinesCount() => _linesCount++;

  void resetLinesCount() => _linesCount = 0;

  void wipe() {
    erasePreviousLine(linesCount);
    resetLinesCount();
  }

  int get windowWidth => _console.windowWidth;

  void showCursor() => _console.showCursor();

  void hideCursor() => _console.hideCursor();

  void write(String text) => _console.write(text);

  void writeln([String? text]) {
    increaseLinesCount();
    _console.writeLine(text);
  }

  void erasePreviousLine([int n = 1]) {
    for (var i = 0; i < n; i++) {
      _console.cursorUp();
      _console.eraseLine();
    }
  }

  Key readKey() => _handleKey(_console.readKey());

  String readLine({
    String initialText = '',
    bool noRender = false,
  }) {
    var buffer = initialText;
    var index = buffer.length;

    final screenRow = _console.cursorPosition?.row ?? 0;
    final screenColOffset = _console.cursorPosition?.col ?? 0;
    final bufferMaxLength = _console.windowWidth - screenColOffset - 3;

    if (buffer.isNotEmpty && !noRender) {
      write(buffer);
    }

    while (true) {
      final key = readKey();

      if (key.isControl) {
        switch (key.controlChar) {
          case ControlCharacter.enter:
            writeln();
            return buffer;
          case ControlCharacter.backspace:
          case ControlCharacter.ctrlH:
            if (index > 0) {
              buffer = buffer.substring(0, index - 1) + buffer.substring(index);
              index--;
            }
            break;
          case ControlCharacter.delete:
          case ControlCharacter.ctrlD:
            if (index < buffer.length - 1) {
              buffer = buffer.substring(0, index) + buffer.substring(index + 1);
            }
            break;
          case ControlCharacter.ctrlU:
            buffer = '';
            index = 0;
            break;
          case ControlCharacter.ctrlK:
            buffer = buffer.substring(0, index);
            break;
          case ControlCharacter.arrowLeft:
          case ControlCharacter.ctrlB:
            index = index > 0 ? index - 1 : index;
            break;
          case ControlCharacter.arrowRight:
          case ControlCharacter.ctrlF:
            index = index < buffer.length ? index + 1 : index;
            break;
          case ControlCharacter.wordLeft:
            if (index > 0) {
              final bufferLeftOfCursor = buffer.substring(0, index - 1);
              final lastSpace = bufferLeftOfCursor.lastIndexOf(' ');
              index = lastSpace != -1 ? lastSpace + 1 : 0;
            }
            break;
          case ControlCharacter.home:
          case ControlCharacter.ctrlA:
            index = 0;
            break;
          case ControlCharacter.end:
          case ControlCharacter.ctrlE:
            index = buffer.length;
            break;
          default:
            break;
        }
      } else {
        if (buffer.length < bufferMaxLength) {
          if (index == buffer.length) {
            buffer += key.char;
            index++;
          } else {
            buffer =
                buffer.substring(0, index) + key.char + buffer.substring(index);
            index++;
          }
        }
      }

      if (!noRender) {
        _console.cursorPosition = Coordinate(screenRow, screenColOffset);
        _console.eraseCursorToEnd();
        write(buffer);
        _console.cursorPosition =
            Coordinate(screenRow, screenColOffset + index);
      }
    }
  }

  Key _handleKey(Key key) {
    if (key.isControl && key.controlChar == ControlCharacter.ctrlC) {
      reset();
      exit(1);
    }
    return key;
  }
}
