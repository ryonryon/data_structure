class Queue<T> {
  List<T> _arr;

  Queue() {
    _arr = List<T>();
  }

  bool isEmpty() => _arr.isEmpty;

  void add(T element) {
    _arr.add(element);
  }

  T pull<T>() {
    final T element = _arr.first as T;
    _arr.removeAt(0);
    return element;
  }

  T peek<T>() {
    return _arr.first as T;
  }
}
