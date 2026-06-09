import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ X : Int, _ A : inout [Int]) -> Int {
    // Implement your solution here

    var positions = Set<Int>()

    for (index, value) in A.enumerated() { // O(N)
        // insertは重複は追加しないからguard文は不要
        positions.insert(value)
        if positions.count == X {
            return index
        }
    }

    return -1
}
