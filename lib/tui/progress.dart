import 'dart:async';
import 'dart:io';

import 'package:hydro_sdk/tui/framework/handleSigint.dart';
import 'package:hydro_sdk/tui/framework/state.dart';
import 'package:tint/tint.dart';

import 'package:hydro_sdk/tui/framework/component.dart';
import 'package:hydro_sdk/tui/framework/context.dart';
import 'package:hydro_sdk/tui/framework/theme.dart';

String _prompt(int x) => '';

class Progress extends Component<ProgressState> {
  Progress({
    required this.length,
    this.size = 1.0,
    this.leftPrompt = _prompt,
    this.rightPrompt = _prompt,
  }) : theme = Theme.defaultTheme;

  Progress.withTheme({
    required this.theme,
    required this.length,
    this.size = 1.0,
    this.leftPrompt = _prompt,
    this.rightPrompt = _prompt,
  });

  Context? _context;

  final Theme theme;

  final int length;

  final double size;

  final String Function(int) leftPrompt;

  final String Function(int) rightPrompt;
  @override
  _ProgressState createState() => _ProgressState();

  @override
  void disposeState(State state) {}

  @override
  State pipeState(State state) {
    if (_context != null) {
      state.setContext(_context!);
    }

    return state;
  }

  void setContext(Context c) => _context = c;
}

class ProgressState {
  ProgressState({
    required this.current,
    required this.clear,
    required this.increase,
    required this.done,
  });

  int current;

  void Function() clear;

  void Function(int) increase;

  void Function() Function() done;
}

class _ProgressState extends State<Progress> {
  late int current;
  late bool done;
  late StreamSubscription<ProcessSignal> sigint;

  @override
  void init() {
    super.init();
    current = 0;
    done = false;
    sigint = handleSigint();
    context.hideCursor();
  }

  @override
  void dispose() {
    context.wipe();
    context.showCursor();
    super.dispose();
  }

  @override
  void render() {
    final line = StringBuffer();
    final leftPrompt = component.leftPrompt(current);
    final rightPrompt = component.rightPrompt(current);
    final occupied = component.theme.progressPrefix.strip().length +
        component.theme.progressSuffix.strip().length +
        leftPrompt.strip().length +
        rightPrompt.strip().length;
    final available = (context.windowWidth * component.size).round() - occupied;

    line.write(leftPrompt);
    line.write(component.theme.progressPrefix);
    line.write(_progress(
      component.theme,
      available,
      (available / component.length * current).round(),
    ));
    line.write(component.theme.progressSuffix);
    line.write(rightPrompt);

    context.writeln(line.toString());
  }

  @override
  ProgressState interact() {
    final state = ProgressState(
      current: current,
      increase: (int n) {
        if (current < component.length) {
          setState(() {
            current += n;
          });
        }
      },
      clear: () {
        setState(() {
          current = 0;
        });
      },
      done: () {
        setState(() {
          done = true;
          sigint.cancel();
        });

        if (component._context != null) {
          return dispose;
        } else {
          dispose();
          return () {};
        }
      },
    );

    return state;
  }

  String _progress(
    Theme theme,
    int length,
    int filled,
  ) {
    final f = theme
        .filledProgressStyle(''.padRight(filled - 1, theme.filledProgress));
    final l = filled == 0
        ? ''
        : filled == length
            ? theme.filledProgressStyle(theme.filledProgress)
            : theme.leadingProgressStyle(theme.leadingProgress);
    final e = theme
        .emptyProgressStyle(''.padRight(length - filled, theme.emptyProgress));

    return '$f$l$e';
  }
}
