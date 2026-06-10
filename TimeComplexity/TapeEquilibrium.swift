import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // Implement your solution here

    // space O(N)
    let total = A.reduce(0, +)
    var head = 0
    var sum = total

    // time O(N)
    for num in A {
        head += num
        let diff = total - head * 2
        guard diff >= 0 else { continue }
        sum -= diff
        if sum == 0 {
            return diff
        }
    }

    return 0
}
