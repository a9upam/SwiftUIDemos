import UIKit
import Foundation

var greeting = "Hello, playground"

let numbers1 = ["1","2","3","4","5","6","7","8","9","10"]
let numbers = [1,2,3,4,5,6,7,8,9,0,10]

extension Array{
    func chunked(into size: Int)->[[Element]]{
        stride(from: 0, through: count, by: size).map{
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}

let arr = Array(arrayLiteral: numbers[1]..<numbers[min((numbers[1]) + 2, numbers.count)])
print(arr)

print(numbers.chunked(into: 2))
