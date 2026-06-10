import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // Implement your solution here

    // space O(N)
    let set = Set(A)
    var count = 0

    // time O(N)
    for _ in 1...A.count {
        count += 1
        guard !set.contains(count) else { continue }
        return count
    }

    return count
}

