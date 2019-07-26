class BinaryNode<Element> implements _Traverse {
  Element value;
  BinaryNode leftChild;
  BinaryNode rightChild;

  BinaryNode({this.value});

  @override
  void traversePreOrder(void visit(Function)) {
    visit(value);
    leftChild.traversePreOrder(visit);
    rightChild.traversePreOrder(visit);
  }

  @override
  void traverseInOrder(void visit(Function)) {
    leftChild.traversePreOrder(visit);
    visit(value);
    rightChild.traversePreOrder(visit);
  }

  @override
  void traversePostOrder(void visit(Function)) {
    leftChild.traversePreOrder(visit);
    rightChild.traversePreOrder(visit);
    visit(value);
  }

  @override
  String toString() {
    return _diagram(this);
  }

  String _diagram(BinaryNode node,
      {String top = "", String root = "", String bottom = ""}) {
    if (node == null) {
      return root + "null\n";
    }

    if (node.leftChild == null && node.rightChild == null) {
      return "$root${node.value}\n";
    }

    return _diagram(node.rightChild,
            top: "$top ", root: "$top┌──", bottom: "$top│ ") +
        "${node.value}\n" +
        _diagram(node.leftChild,
            top: "$bottom│ ", root: "$bottom└──", bottom: "$bottom ");
  }
}

mixin _Traverse {
  void traversePreOrder(void visit(Function));

  void traverseInOrder(void visit(Function));

  void traversePostOrder(void visit(Function));
}
