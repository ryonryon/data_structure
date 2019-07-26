import 'binary_node.dart';

class Tree<Element> implements _MakeTreebyList<Element> {
  BinaryNode _rootNode;

  Tree(List<Element> list, Order order) {
    switch (order) {
      case Order.PREORDER:
        makeTreePreOrder(list);
        break;

      case Order.INORDER:
        makeTreeInOrder(list);
        break;
      case Order.POSTORDER:
        makeTreePostOrder(list);
        break;
    }
  }

  BinaryNode getRoot() {
    return _rootNode;
  }

  @override
  void makeTreePreOrder(List<Element> list) {
    List<BinaryNode> nodeList =
        list.map((item) => BinaryNode(value: item)).toList();

    _rootNode = nodeList[0];
    BinaryNode tempNode = _rootNode;

    for (var i = 1; i < nodeList.length; i++) {
      if (i % 2 != 0) {
        tempNode.leftChild = nodeList[i];
      } else {
        tempNode.rightChild = nodeList[i];

        tempNode = nodeList[i ~/ 2];
      }
    }
  }

  @override
  void makeTreeInOrder(List<Element> list) {
    // TODO: implement makeTreeInOrder
  }

  @override
  void makeTreePostOrder(List<Element> list) {
    // TODO: implement makeTreePostOrder
  }
}

mixin _MakeTreebyList<Element> {
  void makeTreePreOrder(List<Element> list);

  void makeTreeInOrder(List<Element> list);

  void makeTreePostOrder(List<Element> list);
}

enum Order { PREORDER, INORDER, POSTORDER }
