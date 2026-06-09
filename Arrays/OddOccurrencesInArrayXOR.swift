import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // Implement your solution here

    var result = 0

    for num in A { // O(N)
        result ^= num
    }

    return result
}

