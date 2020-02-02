class Table {
  final List<dynamic> arr = [];
  final Map<dynamic, dynamic> map = {};
  
  void rawset(dynamic k, dynamic v) {
    if (k == null) {
      throw "table index is nil";
    } if (k is num && k == arr.length && v == null) {
      arr.removeLast();
    } if (k is num && k == arr.length + 1) {
      map.remove(k);
      arr.add(v);
    } else if (k is num && k.floor() == k && k > 0 && k <= arr.length)
      arr[k.toInt() - 1] = v;
    else
      map[k] = v;
  }
  
  dynamic rawget(dynamic k) {
    return (k is num && k == k.floor() && k <= arr.length && k > 0 ? arr[k.toInt() - 1] : null) ?? (map.containsKey(k) ? map[k] : null);
  }
  
  dynamic operator[](dynamic k) => rawget(k);
  void operator[]=(dynamic k, dynamic v) => rawset(k, v);
  
  Iterator<dynamic> _nextIter;
  
  dynamic next(dynamic k) {
    if (k == null) {
      if (arr.isNotEmpty) {
        return 1;
      } else if (map.isNotEmpty) {
        _nextIter = map.keys.iterator;
        return _nextIter.current;
      } else return null;
    } else if (_nextIter != null && k == _nextIter.current) {
      if (!_nextIter.moveNext()) return null;
      return _nextIter.current;
    } else if (k is num && k.floor() == k && k > 0 && k <= arr.length) {
      if (k == arr.length) {
        _nextIter = map.keys.iterator;
        return _nextIter.current;
      }
      return k + 1;
    } else {
      _nextIter = map.keys.iterator;
      while (_nextIter.current != k) if (!_nextIter.moveNext()) return null;
      if (!_nextIter.moveNext()) return null;
      return _nextIter.current;
    }
  }
  
  int get length {
    if (map.isEmpty) return arr.length;
    
    var j = arr.length;
    var i = j++;
    
    while (map.containsKey(j.toDouble())) {
      i = j;
      j *= 2;
    }
    
    while (j - i > 1) {
      var m = (i + j) ~/ 2;
      if (map.containsKey(m.toDouble())) {
        i = m;
      } else {
        j = m;
      }
    }
    
    return i;
  }
  
  Table metatable;
}