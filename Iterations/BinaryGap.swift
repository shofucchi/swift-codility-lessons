import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ N : Int) -> Int {
    // Implement your solution here

    var maxGap = 0
    var currentGap = 0

    for char in String(N, radix: 2) { // O(N)
        if char == "1" {
            maxGap = max(maxGap, currentGap)
            currentGap = 0
        } else {
            currentGap += 1
        }
    }

    return maxGap
}
