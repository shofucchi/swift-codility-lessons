import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // Implement your solution here

    let set = Set(A)
    var result = 1

    while set.contains(result) {
        result += 1
    }

    return result
}
