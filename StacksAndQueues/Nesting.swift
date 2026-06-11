import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ S : inout String) -> Int {
    // Implement your solution here

    // space O(1)
    // time O(N)
    
    var count = 0

    for char in S {
        count += char == "(" ? 1 : -1

        if count < 0 {
            return 0
        }
    }

    return count == 0 ? 1 : 0
}
