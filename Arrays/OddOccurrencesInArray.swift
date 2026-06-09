import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // Implement your solution here

    var dict = [Int : Int]() // O(N)

    for num in A { // O(N)
        dict[num, default: 0] += 1
    }

    for (k, v) in dict { // O(N)
        guard v % 2 == 1 else { continue }
        return k
    }

    return 0
}

