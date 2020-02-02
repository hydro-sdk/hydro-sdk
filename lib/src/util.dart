int sign(int n, int bits) {
  int mask = 1 << (bits - 1);
  return -(n & mask) + (n & ~mask);
}

int lua_sign(int n, int bits) {
  return n - (1 << (bits - 1));
}

int unsign(n, bits) => n < 0 ? (~(n + 1)) & (1 << (bits - 1)) : n;

int lua_unsign(int n, int bits) {
  return n + (1 << (bits - 1));
}

Map<String, String> _luaEscapeChars = {
  "\x07": "a",
  "\b": "b",
  "\f": "f",
  "\n": "n",
  "\r": "r",
  "\t": "t",
  "\v": "v",
  "\\": "\\",
  "\"": "\"",
  "\'": "\'",
};

String luaEscape(String x) {
  String o = "";
  for (int i = 0; i < x.length; i++) {
    var c = x[i];
    if (_luaEscapeChars.containsKey(c)) {
      o += "\\${_luaEscapeChars[c]}";
    } else if (c.codeUnitAt(0) <= 0x1F || c.codeUnitAt(0) >= 0x7F) {
      if (i < x.length - 1 && x[i + 1].codeUnitAt(0) >= 0x30 && x[i + 1].codeUnitAt(0) <= 0x39) {
        o += "\\${c.codeUnitAt(0).toString().padLeft(3, "0")}";
      } else {
        o += "\\${c.codeUnitAt(0)}";
      }
    } else {
      o += c;
    }
  }
  return o;
}

T maybeAt<T>(List<T> l, int idx) => idx < 0 || idx >= l.length ? null : l[idx];
