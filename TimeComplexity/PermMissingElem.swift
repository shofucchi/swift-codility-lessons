import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // Implement your solution here

    // space O(N)
    let set = Set(A)
    var count = 1

    // time O(N)
    for _ in A.indices {
        if !set.contains(count) {
            return count
        }
        count += 1
    }

    return count
}

