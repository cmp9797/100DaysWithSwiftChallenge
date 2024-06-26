import Foundation

/* --------------------------------------------------------------------------------- */
/* ARITHMETIC OPERATORS */
/// +, -, *, /, %
let a = 12
let b = 4

let addNum = a + b
let subtractNum = a - b
let multiplyNum = a * b
let divideNum = a / b

/// get the remainder value after division
let moduloNum = a % b

/// Check if the number is divided equally with other number
/// "is a is divided equally with b?"
let isMultiple = a.isMultiple(of: b)

// DOUBLE vs INTEGER
/// Double able to store numbers after the decimal point, BUT
/// Int able to store value precisely
let doubleValue: Double = 90000000000000001 /// prints 90000000000000000,0
let intValue: Int = 90000000000000001 /// prints 90000000000000001

/// Note:
/// Both is a diff type of value, so we can't mixed them up together in 1 operation
/// You need to convert it first into the same type (Casting method)

/* --------------------------------------------------------------------------------- */
/* OPERATOR OVERLOADING */
/// "+" operator can be used to sums any items with the same data type
let joinedString = "Coding is" + "fun"
let joinedArray = ["Earth", "Saturn"] + ["Sun", "Moon"]

/// Note:
/// Swift is a TYPE-SAFE LANGUAGE, so it won't let you mix diff data type

/* --------------------------------------------------------------------------------- */
/* COMPOUND ASSIGNMENT OPERATORS */
/// shorthand operators, shorter way to express the same operation
/// +=, -=, /=, %=
var score = 95
score -= 5 /// the same as "score = score - 5"

/* --------------------------------------------------------------------------------- */
/* COMPARISON OPERATORS */
/// ==, !=, >, >=, <, <=
var result: Bool

let firstStatement = "Alley"
let secondStatement = "Audie"
result = firstStatement == secondStatement /// is equal to
result = firstStatement != secondStatement /// is not equal to
result = firstStatement >= secondStatement /// greater than or equal to

var firstNum = 6
var secondNum = 5
result = firstNum > secondNum /// greater than
result = firstNum < secondNum /// less than
result = firstNum <= secondNum /// less than or equal to

/// Note:
/// in string, it will compares the alphabetical order of each charactes
/// alphabetical order is based on Unicode collation algorithm

/* --------------------------------------------------------------------------------- */
/* CONDITIONS */
/// if else statement
firstNum = 8
if firstNum < 5 {
    print("\(firstNum) is below 5")
} else if firstNum % 2 == 0 {
    print("\(firstNum) is even")
} else {
    print("\(firstNum) is odd")
}
/* --------------------------------------------------------------------------------- */

/* COMBINING CONDITIONS */
/// && (and), || (or)
firstNum = 2
secondNum = 8
if firstNum % 2 == 0 && secondNum % 2 == 0 {
    print("Both \(firstNum) and \(secondNum) is even")
}

firstNum = 3
secondNum = 8
if firstNum % 2 == 0 || secondNum % 2 == 0 {
    print("At least one is even")
}

/* --------------------------------------------------------------------------------- */
/* TERNARY OPERATOR */
/// short way to write if condition
firstNum = 10
secondNum = 10
print(firstNum == secondNum ? "Both nums are the same" : "Both nums are different")

/// Note:
/// +, make the code simpler
/// -, some people think that it make the code harder to read or understand

/* --------------------------------------------------------------------------------- */
/* SWITCH STATEMENTS */
/// other alternative of if condition
/// switch case will make sure there are no cases missed
let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

/// fallthrough is used when we want the execution to continue on to the next case
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough /// if "sunny" case executed, it will continue execute "default" case
default:
    print("Enjoy your day!")
}

/* --------------------------------------------------------------------------------- */
/* RANGE OPERATORS */
/// 1. Half-open Range Operator
/// ..>, ..>
score = 50
switch score {
case 0..<50: // 0 to 50, so valid range is 0 - 49
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

// 2. Closed Range Operator
/// ...
score = 50
switch score {
case 0...50: // 0 through 50, so valid range is 0 - 50
    print("You failed badly.")
case 50...85:
    print("You did OK.")
default:
    print("You did great!")
}

// Range operator in array
let planets = joinedArray /// ["Earth", "Saturn", "Sun", "Moon"]
print("1st planet: \(planets[0])")
print("Planet from 2rd-3th: \(planets[1...2])")
print("Planet from 2rd - end of array: \(planets[1...])")
print("Planet from start - 3rd: \(planets[...2])")
/* --------------------------------------------------------------------------------- */
