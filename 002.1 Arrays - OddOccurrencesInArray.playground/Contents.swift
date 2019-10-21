/* Mat Nuckowski
 mat@nuckowski.com
 www.nuckowski.com
*/

import Foundation

// OddOccurrencesInArray

public func oddOccurrences(_ A : inout [Int]) -> Int {
    var oddInt = 0
    for element in A {
        oddInt ^= element
    }
    return oddInt
}

var oddArray1 = [5,8,12,5,12]
var oddArray2 = [5,12,5,12]
var oddArray3 = [Int]()
var oddArray4 = [-4, 5, -4, 5, 11, 3, 3]

var oddResult1 = oddOccurrences(&oddArray1)
var oddResult2 = oddOccurrences(&oddArray2)
var oddResult3 = oddOccurrences(&oddArray3)
var oddResult4 = oddOccurrences(&oddArray4)

assert(oddResult1 == 8, "Odd ocurence should be 8")
assert(oddResult2 == 0, "Odd ocurence should be 0")
assert(oddResult3 == 0, "Odd ocurence should be 0")
assert(oddResult4 == 11, "Odd ocurence should be 11")
