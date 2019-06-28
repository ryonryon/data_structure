class HashTable<Key, Value> {
  int length = 0;
  List<Key> _keys;
  List<Value> _values;

  List<Key> keys() => _keys;

  List<Value> values() => _values;

  HashTable() {
    _keys = List<Key>();
    _values = List<Value>();
  }

  bool isEmpty() {
    return length == 0;
  }

  Value get(Key key) {
    for (int i = 0; i < length; i++) {
      if (_keys[i] == key) {
        return _values[i];
      }
    }
    return null;
  }

  void set(Key key, Value value) {
    _keys.add(key);
    _values.add(value);
  }

  void remove(Key key) {
    for (int i = 0; i < length; i++) {
      if (_keys[i] == key) {
        _keys.removeAt(i);
        _values.removeAt(i);
      }
    }
  }
}
