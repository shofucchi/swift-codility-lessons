import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // Implement your solution here

    // space O(1)
    let sum = A.reduce(0, +)
    var leftSum = 0
    var minValue = Int.max

    // time O(N)
    // 0 < P < N のため
    for i in 0 ..< (A.count - 1) {
        leftSum += A[i]
        let rightSum = sum - leftSum
        let diff = abs(leftSum - rightSum)
        minValue = min(diff, minValue)
    }

    return minValue
}
