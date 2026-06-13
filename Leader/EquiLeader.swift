import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // Implement your solution here

    var dict = [Int: Int]()

    for num in A {
        dict[num, default: 0] += 1
    }

    let sortedDict = dict.sorted(by: { $0.value > $1.value })

    guard let leaderInfo = sortedDict.first else { return 0 }

    let leader = leaderInfo.key
    let leaderCount = leaderInfo.value

    guard leaderCount > A.count / 2 else { return 0 }

    var leftLeaderCount = 0
    var equalLeaderCount = 0

    for index in 0 ..< (A.count - 1) {
        if A[index] == leader {
            leftLeaderCount += 1
        }

        let leftLength = index + 1
        let rightLength = A.count - leftLength
        let rightLeaderCount = leaderCount - leftLeaderCount

        let hasLeftLeader = leftLeaderCount > leftLength / 2
        let hasRightLeader = rightLeaderCount > rightLength / 2

        if hasLeftLeader && hasRightLeader {
            equalLeaderCount += 1
        }
    }

    return equalLeaderCount
}
