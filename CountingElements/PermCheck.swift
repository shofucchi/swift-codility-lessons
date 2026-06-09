import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // Implement your solution here

    let set = Set(A) // O(N)

    guard set.count == A.count else { return 0 }

    for num in 1 ... A.count { // O(N)
        guard set.contains(num) else { return 0 }
    }

    return 1
}
