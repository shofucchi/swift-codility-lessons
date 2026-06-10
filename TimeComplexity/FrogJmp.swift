import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    // Implement your solution here

    var position = X
    var count = 0

    // time O(N)
    while Y > position {
        position += D
        count += 1
    }

    return count
}
