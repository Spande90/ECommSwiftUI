import Foundation

public struct LinkedList<Value>{
    public var head : Node<Value>?
    public var tail : Node<Value>?
    
    public init() {}
    
    public var isEmpty:Bool {
        return head == nil
    }
    
    //Push Method:
    public mutating func push(_ value: Value) {
        head = Node(value: value,next: head)
        if tail == nil{
            tail = head
        }
    }
    //Append (Tail End Instertion):
    public mutating func append(_ value: Value){
        
        guard !isEmpty else {
            push(value)
            return
        }
        tail!.next = Node(value: value)
        
        tail = tail!.next
    }
    //Insert:
    //Two Step function
    //   1. Find particular Node
    //   2. Inster new Node
    
    public func node(at index: Int) -> Node<Value>? {
        var currentNode = head
        var currentIndex = 0
        
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode!.next
            currentIndex += 1
        }
        return currentNode
    }
    @discardableResult
    public mutating func insert(_ value: Value, after node: Node<Value>) -> Node<Value> {
        guard tail !== nil else {
            append(value)
            return tail!
        }
        node.next = Node(value:value, next: node.next)
        return node.next!
    }
    
}
extension LinkedList: CustomStringConvertible {
    
    public var description: String{
        guard let head = head else{
            return "Empty list"
        }
        return String(describing: head)
    }
}

