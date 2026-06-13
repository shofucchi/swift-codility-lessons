import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // Implement your solution here

    A.sort()

    let n = A.count

    let num1 = A[n-1] * A[n-2] * A[n-3]
    let num2 = A[0] * A[1] * A[n-1]

    return max(num1, num2)
}
