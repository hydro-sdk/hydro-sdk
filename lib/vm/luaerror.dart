abstract class LuaError {
  dynamic get value;
  StackTrace get dartStackTrace;
  String get source;
  String toStringShort();
  String toString();
}
