import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // Implement your solution here

    // space O(1)
    let n = A.count + 1
    let expectSum = n * (n + 1) / 2

    // time O(N)
    let actualSum = A.reduce(0, +)

    return expectSum - actualSum
}

