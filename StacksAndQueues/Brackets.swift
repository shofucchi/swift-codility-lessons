import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ S : inout String) -> Int {
    // Implement your solution here

    // space O(N)
    // time O(N)

    var stack = [Character]()

    for char in S {
        switch char {
            case "{", "[", "(":
                stack.append(char)
            case "}":
                guard stack.popLast() == "{" else { return 0 }
            case "]":
                guard stack.popLast() == "[" else { return 0 }
            case ")":
                guard stack.popLast() == "(" else { return 0 }
            default:
                break
        }
    }

    return stack.isEmpty ? 1 : 0
}
