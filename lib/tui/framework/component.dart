import 'package:hydro_sdk/tui/framework/state.dart';

abstract class Component<T extends Object> {
  State createState();

  void disposeState(State state) => state.dispose();

  State pipeState(State state) => state;

  int _initLinesCount = 0;

  T interact() {
    final state = pipeState(createState());
    state.component = this;
    state.init();
    _initLinesCount = state.context.linesCount;
    state.context.resetLinesCount();

    state.render();
    state.context.increaseRenderCount();

    final output = state.interact();

    state.context.wipe();

    state.context.erasePreviousLine(_initLinesCount);
    disposeState(state);

    return output as T;
  }
}
