import 'dart:collection';

class Upval extends LinkedListEntry<Upval> {
  Upval(this.reg, this.registers) : open = true;
  Upval.store(this.storage) : open = false;

  bool open;
  int? reg;
  List<dynamic>? registers;
  dynamic storage;

  void close() {
    open = false;
    storage = registers![reg!];
    registers = null;
    unlink();
  }

  void set(dynamic v) {
    if (open) {
      registers![reg!] = v;
    } else {
      storage = v;
    }
  }

  dynamic get() => open ? registers![reg!] : storage;
}
