class LinkedList<T> {
  _Node<T> head;

  LinkedList() {}

  bool isEmpty() {
    return head == null;
  }

  void append<T>(T value) {
    _Node newNode = _Node(value: value);
    if (head == null) {
      head = newNode;
    } else {
      var h = head;
      while (h.next != null) {
        h = h.next;
      }
      h.next = newNode;
    }
  }

  void remove(int index) {
    _Node h = head;
    for (int i = 0; i <= index; i++) {
      if (i == index - 1) {
        h.next == null;
        break;
      } else if (h.next == null) {
        break;
      }
    }
  }
}

class _Node<T> {
  T value;
  _Node<T> next;

  _Node({this.value});
}
