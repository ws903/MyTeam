//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
str = "Hello, Swift"
let constStr = str

<<<<<<< HEAD
var nextYear : Int
var temp : Float
var hasPet : Bool
var arrayOfInts : [Int]
var dictionaryOfCapitalsByCountry: Dictionary<String,String>
var winninglotteryNumbers: Set<Int>

let number = 42
let fmStation = 91.1

var countingUp = ["one", "two"]
let nameByParkingSpace = [13: "Alice", 27:"Bob"]
let space13Assignee: String? = nameByParkingSpace[13]
let space42Assignee: String? = nameByParkingSpace[42]
if let space13Assignee = nameByParkingSpace[13]{
    print("Key 13 is assigned in the dictionary")
}
let secondElement = countingUp[1]
countingUp.count
countingUp.append("three")
for (space,name) in nameByParkingSpace {
    let permit = "Space \(space): \(name)"
}


let emptyString = ""
emptyString.isEmpty

let emptyArrayOfInts = [Int]()
let emptySetOfFloats = Set<Float>()
let defaultNumber = Int()
let defaultBool = Bool()

let meaningOfLife = String(number)
let availableRooms = Set([205,411,412])

let defaultFloat = Float()
let floatFromLiteral = Float(3.14)
=======
var nextYear: Int
var bodyTemp: Float
var hasPes: Bool
var arrayOfInts: [Int]
var dictionaryOfCapitalByCountry: [String:String]
var winningLotteryNumbers: Set<Int>

let number = 42
let meaningOfLife = String(number)
let fmStation = 91.1

var countingUp = ["one", "two"]
let secondElement = countingUp[1]
countingUp.count
countingUp.append("three")

let emptySting = String()
let emptyArrayOfInts = [Int]()
let emptySetOfFloats = Set<Float>()
let emptyString = ""
emptyString.isEmpty

let defaultNumber = Int()
let defaultBool = Bool()

let availableRooms = Set([205, 411, 412])

let defaultFloat = Float()
let floatFromLiteral = Float(3.14)

>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
let easyPi = 3.14
let floatFromDouble = Float(easyPi)
let floatingPi: Float = 3.14

<<<<<<< HEAD
var anOptionalFloat : Float?
var anOptionalArrayOfStrings : [String]?
var anOptionalArrayOfOptionalStrings : [String?]?
=======
var anOptionalFloat: Float?
var anOptionalArrayOfStrings: [String]?
var anOptionalArrayOfOptionalStrings: [String?]?
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198

var reading1: Float?
var reading2: Float?
var reading3: Float?
<<<<<<< HEAD
reading1 = 9.8
reading2 = 9.2
reading3 = 9.7
if let r1 = reading1,
    r2 = reading2,
    r3 = reading3 { let avgReading = (r1 + r2 + r3) / 3
} else {
    let errorString = "Instrument reported a reading that was nil"
}

for (i,string) in countingUp.enumerate() {
    //(0,"one"),(1, "two")
}


enum PieType: Int{
=======

reading1 = 9.8
reading2 = 9.2
//reading3 = 9.7

if let r1 = reading1,
    r2 = reading2,
    r3 = reading3 {
        let avgReading = (r1 + r2 + r3) / 3
} else {
    let errorString = "Instrument reported a reading that was nil."
}

let nameByParkingSpace = [13: "Alice", 27: "Bob"]
if let space13Assignee = nameByParkingSpace[13] {
    print("Key 13 is assigned in the dictionary!")
}
let space42Assignee: String? = nameByParkingSpace[42]
for (space, name) in nameByParkingSpace {
    let permit = "Space \(space): \(name)"
}

enum PieType: Int {
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
    case Apple = 0
    case Cherry
    case Pecan
}
let favoritePie = PieType.Apple
<<<<<<< HEAD
let name: String
switch favoritePie {
case.Apple:
    name = "Apple"
case.Cherry:
    name = "Cherry"
case.Pecan:
=======

let name: String
switch favoritePie{
case .Apple:
    name = "Apple"
case .Cherry:
    name = "Cherry"
case .Pecan:
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
    name = "Pecan"
}

let pieRawValue = PieType.Pecan.rawValue
<<<<<<< HEAD
//pieRawValue is an Int with value 2
if let pieType = PieType(rawValue: pieRawValue) {
    //Got a valid 'pieType'
=======
//pieRawValue is an Int with a value of 2

if let pieType = PieType(rawValue: pieRawValue) {
    //Got a valid 'pieType'!
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
}



<<<<<<< HEAD
=======


>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
