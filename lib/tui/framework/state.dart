import 'package:meta/meta.dart';
import 'package:hydro_sdk/tui/framework/component.dart';
import 'package:hydro_sdk/tui/framework/context.dart';

abstract class State<T extends Component> {
  Context? _context;

  Context get context {
    if (_context == null) {
      throw Exception("The state's context has already been disposed");
    }
    return _context!;
  }

  void setContext<U extends Context>(U c) => _context = c;

  T? _component;

  T get component {
    if (_component == null) {
      throw Exception(
        'The state is not bind to a component'
        ' '
        'or is already disposed.',
      );
    }
    return _component!;
  }

  set component(T newComponent) {
    _component = newComponent;
  }

  @protected
  @mustCallSuper
  void setState(void Function() fn) {
    fn();
    context.wipe();
    render();
    context.increaseRenderCount();
  }

  @mustCallSuper
  void init() {
    _context ??= Context();
  }

  @mustCallSuper
  void dispose() {
    _context = null;
  }

  void render() {}

  dynamic interact();
}
