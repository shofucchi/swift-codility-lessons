import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    // Implement your solution here

    guard !A.isEmpty else { return A }

    // K > A.countも考慮する
    let rotation = K % A.count

    guard rotation != 0 else { return A }

    let splitIndex = A.count - rotation
    let head = Array(A[0..<splitIndex]) // O(N)
    let tail = Array(A[splitIndex..<A.count]) // O(N)

    return tail + head
}
