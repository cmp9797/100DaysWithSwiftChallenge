
import Foundation

/* --------------------------------------------------------------------------------- */
/* COLLECTIONS */
// ARRAY
/// Collections of values which have the same type
/// Swift array is able to store different type of value
let grape = "Purple Grape"
let apple = "Green Apple"
let melon = "Yellow Melon"

let fruits = [grape, apple, melon]
let myFruits : [String] = [grape, melon] /// using the type annotations

/// use “Any” as the undefined type annotation
let mixedData : [Any] = ["Hello", 0, "This is text", 0.93]

/// array index is zero based
fruits[1]
fruits[5] ///error, because the array only have 3 items, so max index number is 2

// SET
/// similar with array, but NO DUPLICATE ITEMS, and NOT STORED IN ANY ORDER
/// it is stored automatically by system based on efficiency
/// possible to amke sets from array
let colors = ["red", "green"]
let myColors = Set(colors)

/// make a set directly
var rainbow = Set(["red", "yellow", "green"])
rainbow = Set(["red", "yellow", "green", "red"]) /// the second entry of "red" is ignored

/// Note:
/// Use sets to check if “a value” exist
/// Sets have better optimization in searching instead of array
/// Array need to search all over the index start from the first index
/// Example: search a word in dictionary, phone number in contact list, etc.

// TUPLE
/// similar with array, but has FIXED SIZE
/// the item value CAN be changed, while the item type CANT
/// use the numerical position or name to access the item
/// Assume tuple as an object, and the items as the object’s properties/ attributes.
var randomValue = (2, 1, 6, 3, 9)
var movie = (title:"Coda", dateReleased:"2021", genre:"comedy-drama")

/// access the items/properties
movie.0 /// result:"Coda", because with the item position
movie.title ///result:"Coda", accessed with the item name

/// Note:
/// Reccomended to use tuple in storing different type of values rather than array

// TUPLE vs SETS vs ARRAY
/// Tuple: store a specific and fixed collection of related values
/// Sets: store an unique values, and need to search the item very quickly
/// Array: store a group of values that accept duplicates, matters the item's order

// DICTIONARY
/// similar with arrays, but NOT stores in an index
/// instead it uses a name or identifiers called "key"
/// format "Key": "Value"
let finalScoreClass1 = [
    "Student1": 90,
    "Student2": 80,
]

///call the items with the key, not the index.
finalScoreClass1["Student1"] /// get the final score of Student1

/// use type annotation
var finalScoreClass2 : [String : Int] = [
    "Student1": 90,
    "Student2": 80,
]

// Default Values in Dictionary
/// Use "default" to get back an default value when the data we want is not exist or "nil".
/// It’s like a “backup value”.
/// It's optional, based on your need
finalScoreClass2 = [
    "Student1": 90,
    "Student2": 80,
]
finalScoreClass2["Student3", default:0] // get the default value "0" instead of nil

/* --------------------------------------------------------------------------------- */
/* CREATE EMPTY COLLECTIONS */
// ARRAY
///swift special syntax
var myArray1 : [Int] = []
var myArray2 = [Int]()
//angle bracket syntax
var myArray3 = Array<Int>()

// SET
var mySet = Array<Int>()

// DICTIONARY
///swift special syntax
var myDictionary = [String: String]()
var myDictionary2 : [String: String] = [:]

///angle bracket syntax
var myDictionary3 = Dictionary<String, String>()

///add items
myDictionary["EN"] = "English"


// TUPLE
/// It’s rare to use an “empty tuple”,
/// because we need to set the items directly when creating it. BUT,
/// we can model a missing tuple value. We need to make the tuple optional.
var myTuple: (key: String, val: Int)? = nil

/// Note:
/// There is an empty tuple,
/// but it used as the return type of function void (function that return nothing)
/// https://stackoverflow.com/questions/33357892/swift-declaring-empty-tuples

/* --------------------------------------------------------------------------------- */
/* ENUMERATIONS (ENUMS) */
/// used to define a group of related values to makes them easier to use
/// minimizeed the ambiguity of your code,
/// especially because of duplicate similar value that has the same meaning

// 1. Manually define the value
let result = "fail"
let result2 = "success"
let result3 = "succeed"

// 2. Grouped the values as a group of result desc using enum
enum Result {
    case success
    case failure
}
let result4 = Result.failure

// ASSOCIATED VALUES
/// used to add additional information to an enum case.
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let sing = Activity.singing(volume: 5) /// The activity is singing with volume 5 db

// RAW VALUES
/// used to add a “meaning” of an enum case.

/// Integer Type
enum PriorityInt: Int {
    case low = 1
    case medium
    case high
}
PriorityInt(rawValue: 2) /// returns "medium"

/// Double Type
enum PriorityDouble: Double {
    case low = 1
    case medium
    case high
}
PriorityDouble(rawValue: 2) /// returns "medium"
PriorityDouble(rawValue: 2.0) /// returns "medium"
PriorityDouble(rawValue: 2.7) /// returns nil

/*
 /// Do not do this! It'll give you error!
 enum Priority: Double {
 case low = 1.5
 case medium
 case high
 }
 
 /// instead do this
 enum Priority: Double {
 case low = 1.0
 case medium = 2.5
 case high = 5
 }
 */

/// Note:
/// In raw value, Swift automatically assign each case with a number starts from 0.
/// If you just set an integer value on the first item only,
/// the rest will automatically generated. But it only works in Integer value only.
/* --------------------------------------------------------------------------------- */
