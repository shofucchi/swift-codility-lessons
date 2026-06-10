import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    // Implement your solution here

    // time O(1)
    // space O(1)
    let left = Y - X

    // 切り上げ除算
    return (left + D - 1) / D
}
