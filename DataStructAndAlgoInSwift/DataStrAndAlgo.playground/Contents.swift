import Foundation

//print("Creating and linking nodes")
//let node1 = Node(value:1)
//let node2 = Node(value:2)
//let node3 = Node(value:3)
//node1.next = node2
//node2.next = node3
//print(node1)
//
//print("-------------------------------")
//print("push linkedlist")
//var pushlist = LinkedList<Int>()
//pushlist.push(3)
//pushlist.push(2)
//pushlist.push(1)
//print(pushlist)
//
//print("-------------------------------")
//print("append linkedlist")
//var appendlist = LinkedList<Int>()
//appendlist.append(1)
//appendlist.append(2)
//appendlist.append(3)
//print(appendlist)
//
//print("-------------------------------")
//print("insert linkedlist")
//var insertlist = LinkedList<Int>()
//insertlist.push(3)
//insertlist.push(2)
//insertlist.push(1)
//
//print("Before Inserting: \(insertlist)")
//var middleNode = insertlist.node(at: 1)!
//for _ in 1...4 {
//    middleNode = insertlist.insert(-1, after: middleNode)
//}
//print("After Inserting: \(insertlist)")
//
//print("-------------------------------")
//print("pop linkedlist")
//var popList = LinkedList<Int>()
//popList.push(3)
//popList.push(2)
//popList.push(1)
//print("Before popping: \(popList)")
//let popValue = popList.pop()
//print("After popping list: \(popList)")
//print("Popped Value: " + String(describing: popValue))
//
//print("-------------------------------")
//print("remove linkedlist")
//var removeList = LinkedList<Int>()
//removeList.push(3)
//removeList.push(2)
//removeList.push(1)
//print("Before removing last Node: \(removeList)")
//let removedValue = removeList.removeLast()
//print("After removing last node from list: \(removeList)")
//print("removedValue: " + String(describing: removedValue))
//
//print("-------------------------------")
//print("removing a node after a particular node")
//var removeAfterlist = LinkedList<Int>()
//removeAfterlist.push(3)
//removeAfterlist.push(2)
//removeAfterlist.push(1)
//removeAfterlist.push(3)
//removeAfterlist.push(2)
//removeAfterlist.push(1)
//print("Before removing at particular index: \(removeAfterlist)")
//let index = 3
//let node = removeAfterlist.node(at: index - 1)!
//let removedAfterValue = removeAfterlist.remove(after: node)
//print("After removing at index \(index): \(removeAfterlist)")
//print("Removed value: " + String(describing: removedAfterValue))
//
//print("-------------------------------")
//print("Using Collection")
//
//var collList = LinkedList<Int>()
//for i in 0...9 {
//    collList.append(i)
//}
//print("List: \(collList)")
//print("First element: \(collList[collList.startIndex])")
//print("Array containing first 3 elements: \(Array(collList.prefix(3)))")
//print("Array containing last 3 elements: \(Array(collList.suffix(3)))")
//let sum = collList.reduce(0,+)
//print("Sum of all values: \(sum)")
//
print("-------------------------------")
print("Using C-o-W on linkedList")
var cowlist1 = LinkedList<Int>()
cowlist1.append(1)
cowlist1.append(2)
var cowlist2 = cowlist1
print("List1: \(cowlist1)")
print("List2: \(cowlist2)")
print("After appending 3 to list2")
cowlist2.append(3)
print("List1: \(cowlist1)")
print("List2: \(cowlist2)")
