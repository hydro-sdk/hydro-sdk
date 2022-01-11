import 'dart:async';
import 'dart:io';

import 'package:hydro_sdk/tui/framework/component.dart';
import 'package:hydro_sdk/tui/framework/context.dart';
import 'package:hydro_sdk/tui/framework/handleSigint.dart';
import 'package:hydro_sdk/tui/framework/state.dart';
import 'package:hydro_sdk/tui/framework/theme.dart';

class PipelineProgress extends Component<PipelineProgressState> {
  PipelineProgress({
    required this.length,
    this.size = 1.0,
    required this.leftPrompt,
    required this.rightPrompt,
    required this.total,
  }) : theme = Theme.defaultTheme;

  PipelineProgress.withTheme({
    required this.theme,
    required this.length,
    this.size = 1.0,
    required this.leftPrompt,
    required this.rightPrompt,
    required this.total,
  });

  Context? _context;

  final Theme theme;

  final int length;

  final double size;

  final int total;

  final String Function({
    required int completed,
    required int total,
    required String hashKey,
    required String cacheGroup,
  }) leftPrompt;

  final String Function({
    required int completed,
    required int total,
    required String hashKey,
    required String cacheGroup,
  }) rightPrompt;

  @override
  _PipelineProgressState createState() => _PipelineProgressState(
        total: total,
      );

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

class PipelineProgressState {
  PipelineProgressState({
    required this.completed,
    required this.total,
    required this.hashKey,
    required this.cacheGroup,
    required this.clear,
    required this.changeCompleted,
    required this.changeHashKey,
    required this.changeCacheGroup,
    required this.done,
  });

  int total;
  int completed;
  String? hashKey;
  String? cacheGroup;

  void Function() clear;

  void Function(int) changeCompleted;
  void Function(String?) changeHashKey;
  void Function(String?) changeCacheGroup;

  void Function() Function() done;
}

class _PipelineProgressState extends State<PipelineProgress> {
  late int completed;
  late bool done;
  late StreamSubscription<ProcessSignal> sigint;

  int total;
  String? hashKey;
  String? cacheGroup;

  _PipelineProgressState({
    required final this.total,
  });

  @override
  void init() {
    super.init();
    completed = 0;
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

    final leftPrompt = component.leftPrompt(
      completed: completed,
      total: total,
      cacheGroup: cacheGroup ?? "",
      hashKey: hashKey ?? "",
    );

    final rightPrompt = component.rightPrompt(
      completed: completed,
      total: total,
      cacheGroup: cacheGroup ?? "",
      hashKey: hashKey ?? "",
    );

    line.write(leftPrompt);
    line.write(" ");
    line.write(rightPrompt);

    context.writeln(line.toString());
  }

  @override
  PipelineProgressState interact() {
    final state = PipelineProgressState(
      completed: completed,
      total: total,
      cacheGroup: cacheGroup,
      hashKey: hashKey,
      changeCompleted: (int n) {
        setState(() {
          completed = n;
        });
      },
      changeHashKey: (String? val) => setState(
        () => hashKey = val,
      ),
      changeCacheGroup: (String? val) => setState(
        () => cacheGroup = val,
      ),
      clear: () {
        setState(() {
          completed = 0;
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
}
