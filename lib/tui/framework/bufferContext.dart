import 'package:hydro_sdk/tui/framework/context.dart';

class BufferContext extends Context {
  BufferContext({
    required this.buffer,
    required this.setState,
  });

  final StringBuffer buffer;

  final void Function() setState;

  @override
  void writeln([String? text]) {
    buffer.clear();
    buffer.write(text);
    setState();
  }
}
