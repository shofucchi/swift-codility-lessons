import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // Implement your solution here

    let n = A.count

    guard n >= 3 else { return 0 }

    A.sort()

    for i in 0 ..< (n - 2) {
        let p = A[i]
        let q = A[i + 1]
        let r = A[i + 2]

        if p + q > r {
            return 1
        } else {
            continue
        }
    }

    return 0
}

