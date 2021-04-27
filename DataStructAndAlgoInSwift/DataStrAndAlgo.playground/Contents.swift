import Foundation

print("Creating and linking nodes")
let node1 = Node(value:1)
let node2 = Node(value:2)
let node3 = Node(value:3)
node1.next = node2
node2.next = node3
print(node1)
print("-------------------------------")
print("push linkedlist")
var pushlist = LinkedList<Int>()
pushlist.push(3)
pushlist.push(2)
pushlist.push(1)
print(pushlist)
print("-------------------------------")
print("append linkedlist")
var appendlist = LinkedList<Int>()
appendlist.append(1)
appendlist.append(2)
appendlist.append(3)
print(appendlist)
print("-------------------------------")
print("insert linkedlist")
var insertlist = LinkedList<Int>()
insertlist.push(3)
insertlist.push(2)
insertlist.push(1)

print("Before Inserting: \(insertlist)")
var middleNode = insertlist.node(at: 1)!
for _ in 1...4 {
    middleNode = insertlist.insert(-1, after: middleNode)
}
print("After Inserting: \(insertlist)")


