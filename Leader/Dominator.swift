import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // Implement your solution here

    guard !A.isEmpty else { return -1 }

    var dict = [Int: Int]()

    for num in A {
        dict[num, default: 0] += 1
    }

    let sortedDict = dict.sorted(by: { $0.value > $1.value })

    if let first = sortedDict.first,
    first.value > A.count / 2,
    let index = A.firstIndex(of: first.key) {
        return index
    }

    return -1
}
