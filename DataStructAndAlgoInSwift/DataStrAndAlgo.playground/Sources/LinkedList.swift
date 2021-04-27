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
    
    
}
extension LinkedList: CustomStringConvertible {
    
    public var description: String{
        guard let head = head else{
            return "Empty list"
        }
        return String(describing: head)
    }
}

