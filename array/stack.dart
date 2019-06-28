class Stack<T> {
  List<T> _arr;

  Stack() {
    _arr = List<T>();
  }

  bool isEmpty() => _arr.isEmpty;

  T pop<T>() {
    final T element = _arr.last as T;
    _arr.removeLast();
    return element;
  }

  void push(T element) {
    _arr.add(element);
  }

  T peek<T>() {
    return _arr.last as T;
  }
}
