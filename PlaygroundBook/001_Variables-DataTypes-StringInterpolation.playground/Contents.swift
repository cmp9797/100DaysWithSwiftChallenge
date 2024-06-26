import Foundation

/* --------------------------------------------------------------------------------- */
/* VARIABLES and CONSTANT */

// VARIABLE
/// the value CAN be modified, keyword: "var"
var name = "Woody" // create a variable called "name" for the 1st time
name = "buzz" //modify the name to "buzz"

// CONSTANT
/// the value CAN NOT be modified, keyword: "let"
let name2 = "Woody" // create a variable called "name" for the 1st time
// name2 = "buzz" //error

/// Note:
/// The value need to be wrapped with quotation marks because the data type is STRING

/* --------------------------------------------------------------------------------- */
/* SIMPLE DATA TYPES */

// STRING
/// The value is wrapped with quotation marks
var introduction = "Hello, I'm Woody"

/// Multi-line Strings
/// Use three double quote marks to store more than 1 line of string
introduction = """
Hello,
I'm Woody
"""
print(introduction); print("")

/// to store strings format neatly, you need to end each line with a \.
introduction = """
Hello, \
I'm Woody
"""
print(introduction)

// INTEGER
var integerNumber = 70000
integerNumber = 70_000

/// Note:
/// underscore help separate large number to make it more readible,
/// the value remains the same

// DOUBLE
/// Double = double-precision floating-point number, store fractional values
var doubleNumber = 70000.59
doubleNumber = 70_000.59

// BOOLEAN
/// hold "true" or "false" value only
var isTaskCompleted = true
isTaskCompleted = false

/* --------------------------------------------------------------------------------- */
/* STRING INTERPOLATION */
/// helps you put the variables inside your string
var age = 8
introduction = "Hello, I'm Woody. I am \(age) years old"

/* --------------------------------------------------------------------------------- */

