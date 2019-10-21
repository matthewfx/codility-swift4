/* Mat Nuckowski
 mat@nuckowski.com
 www.nuckowski.com
*/

import Foundation

// BINARY GAP

public func binaryGap(_ N : Int) -> Int {
    let stringWithouTrailingZeros = String(N, radix: 2).trimmingCharacters(in: CharacterSet(charactersIn: "0"))
    let zeroComponents = stringWithouTrailingZeros.components(separatedBy: "1")
    let componentLengths = zeroComponents.map { $0.count }
    guard let max = componentLengths.max() else {
        return 0
    }
    return max
}

var binaryGapResult1 = binaryGap(9)
var binaryGapResult2 = binaryGap(32)
var binaryGapResult3 = binaryGap(1041)
var binaryGapResult4 = binaryGap(555)
var binaryGapResult5 = binaryGap(20)

assert(binaryGapResult1 == 2, "Binary gap should be 2")
assert(binaryGapResult2 == 0, "Binary gap should be 0")
assert(binaryGapResult3 == 5, "Binary gap should be 5")
assert(binaryGapResult4 == 3, "Binary gap should be 3")
assert(binaryGapResult5 == 1, "Binary gap should be 1")
