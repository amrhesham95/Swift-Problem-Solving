//
//  MergeTwoSortedLists.swift
//  ProblemSolvingTests
//
//  Created by Amr Hesham on 04/06/2024.
//

import XCTest

class MergeTwoSortedLists: XCTestCase {
    
    /*
     The question:
     Merge Two Sorted Linked Lists
     
     /// Sample Usage
     • input: l1: 1 -> 2 -> 4, l2: 1 -> 3 -> 4->
     • output: 1 1 2 3 4
     
     */
    /// function that returns same sentence with every other word reversed.
    /// - Parameters:
    /// - l1: head of first linked list
    /// - l2: head of second linked list
    func mergeLinkedLists(l1: Node?, l2: Node?) -> Node? {
        let dummy = Node(value: 0)
        var current = dummy
        var l1 = l1
        var l2 = l2
        
        while l1 != nil && l2 != nil {
            if l1!.value <= l2!.value {
                current.next = l1
                l1 = l1?.next
            } else {
                current.next = l2
                l2 = l2?.next
            }
            current = current.next!
        }
        
        if l1 != nil {
            current.next = l1!
        }
        
        if l2 != nil {
            current.next = l2!
        }

        return dummy.next
    }
    
    func presentLinkedList(node: Node?) -> String {
        var word = ""
        var node = node
        while node?.next != nil {
            if let value = node?.value {
                word += "\(value) "
            }
            node = node?.next
        }
        word.removeLast()
        return word
    }
        
    func test1() {
        // given
        // Example usage
        let l1 = Node(value: 1)
        l1.next =  Node(value:2)
        l1.next?.next =  Node(value:4)
        let l2 =  Node(value:1)
        l2.next =  Node(value:3)
        l2.next?.next =  Node(value:4)
        let mergedList = mergeLinkedLists(l1: l1, l2: l2)
        
        // Output: 1 1 2 3 4 4

        
        // when
        let output = presentLinkedList(node: mergedList)
        
        // then
        XCTAssertEqual("1 1 2 3 4", output)
    }
    
    class Node {
        var value: Int
        var next: Node?
        init(value: Int, next: Node? = nil) {
            self.value = value
            self.next = next
        }
    }
}

