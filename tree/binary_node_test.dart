// import 'binary_node.dart';
import 'tree.dart';

void binaryNodeText() {
  const treeArray = [1, 4, 5, 2, null, 6, 3];

  // final rootNode = BinaryNode<int>(value: 1);
  // final node1 = BinaryNode<int>(value: 4);
  // final node2 = BinaryNode<int>(value: 5);
  // final node3 = BinaryNode<int>(value: 2);
  // final node4 = BinaryNode<int>(value: 6);
  // final node5 = BinaryNode<int>(value: 3);

  // rootNode.leftChild = node1;
  // rootNode.rightChild = node2;
  // node1.leftChild = node3;
  // node2.leftChild = node4;
  // node2.rightChild = node5;

  // print(rootNode);

  Tree tree = Tree(treeArray, Order.PREORDER);

  print(tree.getRoot());
}

main() {
  binaryNodeText();
}
