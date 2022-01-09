import 'package:hydro_sdk/tui/framework/bufferContext.dart';
import 'package:hydro_sdk/tui/framework/context.dart';
import 'package:hydro_sdk/tui/progress.dart';

class MultiProgress {
  final Context _context = Context();
  final List<StringBuffer> _lines = [];
  final List<ProgressState> _bars = [];
  final List<void Function()> _disposers = [];

  void _dispose(void Function() fn) {
    fn();

    if (_disposers.length == _bars.length) {
      for (final disposer in _disposers) {
        disposer();
      }

      _context.wipe();
    }
  }

  void _render() {
    if (_context.renderCount > 0) {
      _context.erasePreviousLine(_context.linesCount);
      _context.resetLinesCount();
    }

    for (final line in _lines) {
      _context.writeln(line.toString());
    }

    _context.increaseRenderCount();
  }

  /// Adds a new [Progress] to current [MultiProgress].
  ProgressState add(Progress progress) {
    final index = _bars.length;

    _lines.add(StringBuffer());
    progress.setContext(BufferContext(
      buffer: _lines[index],
      setState: _render,
    ));
    _bars.add(progress.interact());

    final state = ProgressState(
      current: _bars[index].current,
      increase: (n) => _bars[index].increase(n),
      clear: () => _bars[index].clear(),
      done: () {
        final disposer = _bars[index].done();
        _dispose(() {
          _disposers.add(disposer);
        });
        return disposer;
      },
    );

    return state;
  }
}
