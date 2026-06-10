import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // Implement your solution here

    // space O(1)
    let sum = A.reduce(0, +)
    var leftSum = 0
    var diff = 0
    var minValue = sum

    // time O(N)
    for num in A {
        leftSum += num
        diff = abs(sum - leftSum * 2)
        minValue = min(diff, minValue)
    }

    return minValue
}
