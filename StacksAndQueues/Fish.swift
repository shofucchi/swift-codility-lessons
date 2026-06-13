import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int], _ B : inout [Int]) -> Int {
    // Implement your solution here

    var downFish = [Int]()
    var upAlive = 0

    for index in A.indices {
        let fish = A[index]
        let direction = B[index]

        if direction == 1 {
            downFish.append(fish)
        } else {
            while let lastDownFish = downFish.last, lastDownFish < fish {
                let _ = downFish.popLast()
            }

            if downFish.isEmpty {
                upAlive += 1
            }
        }
    }

    return upAlive + downFish.count
}
