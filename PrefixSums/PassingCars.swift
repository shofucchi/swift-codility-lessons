import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // Implement your solution here

    var eastCars = 0
    var pairs = 0

    // time O(N)
    for direction in A {
        if direction == 0 {
            eastCars += 1
            continue
        }

        pairs += eastCars

        if pairs > 1_000_000_000 {
            return -1
        }
    }

    return pairs
}
