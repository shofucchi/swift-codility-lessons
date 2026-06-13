import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ H : inout [Int]) -> Int {
    // Implement your solution here

    var stack = [Int]()
    var blocks = 0

    for height in H {
        while let last = stack.last, last > height {
            let _ = stack.popLast()
        }

        if stack.last == height {
            continue
        }

        stack.append(height)
        blocks += 1
    }

    return blocks
}
