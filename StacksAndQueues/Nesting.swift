import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ S : inout String) -> Int {
    // Implement your solution here

    var startSymbolCount = 0
    var endSymbolCount = 0

    for symbol in S {
        if symbol == "(" {
            startSymbolCount += 1
        } else {
            endSymbolCount += 1
        }
    }

    return startSymbolCount == endSymbolCount ? 1 : 0
}
