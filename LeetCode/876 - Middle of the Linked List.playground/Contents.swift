import Foundation

//Given the head of a singly linked list, return the middle node of the linked list.
//
//If there are two middle nodes, return the second middle node.

// O(n) approach with recursion

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        let count = countNextNode(node: head)
        var targetNodeCount = (count / 2)
        var result: ListNode? = head

        while targetNodeCount != 0 {
            result = result?.next
            targetNodeCount -= 1
        }

        return result
    }

    func countNextNode(node: ListNode?) -> Int {
        if node?.next == nil {
            return 1
        }

        return 1 + countNextNode(node: node?.next)
    }
    
    
    // O(n) approach with fast/slow pointer
    func middleNodeWithPointers(_ head: ListNode?) -> ListNode? {
        var slowPointer = head
        var fastPointer = head

        while fastPointer?.next != nil {
            slowPointer = slowPointer?.next
            fastPointer = fastPointer?.next?.next
        }

        return slowPointer
    }
}
