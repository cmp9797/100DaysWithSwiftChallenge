Hey everyone!

I joined the 100 Days with Swift Challenge. I want to share my learning progress by making a summary of it (To keep me on track 🤭). If you are interested in iOS Development and want to start learning about it, you can join this challenge [here](https://www.hackingwithswift.com/100). 
Let’s learn together!🔥

# I. Introduction to Swift
<details>
    <summary> 01 – VARIABLES, SIMPLE DATA TYPES, & STRING INTERPOLATION</summary>

### Variables
- used to store a data and can be modified
- **```var```** keyword is used to **create a new variable** only for **the first time.** So, when we want to modify the value, we can just change the value directly.
- The value need to be wrapped with **quotation marks.**

```swift
var name = "Woody" // create a variable called "name" for the 1st time
name = "buzz" //modify the name to "buzz"
```

### Constants
- If variable value can be modified, constants can’t once they created.
- **```let```** keyword is used to create a constant.
- It is recommended to use constants when we don’t want to modify the values. By using constants, it help you to control any variables that you used so the important piece of stashed data won’t be removed or replaced at any point in the future.

```swift
let name = "Woody" // create a constant called "name"
name = "buzz" //error
```

### Simple Data Types
Swift is a type-safe language. What is it?
When we code, we able to create many variables with various data type. In swift, we **don’t have to define the data type** when creating a new variable, by assign it’s value, Swift will automatically assign its type. Also, the **variable type can’t be changed** after it’s already assigned. So, you will reminded if you assign different value to a variable. It will make you code safely, you won’t make a mistake while assigning different values.

- #### String
    - String is used when we want to use/create a group of letter (string). We can simply put it as text data.
    - **```String```** keyword is used to assign string data type
    
- #### Multi-line strings
  Standard string uses quotation marks, but it only allows you to make a single line of string. If you want to store more than 1 line of string, you can use **three double quote marks**.
    But, to store a multi-line strings format neatly, you need to end each line with a \. 
    
    ```swift
    var introduction = """ 
    Hello, I'm Woddy\
    This is the second line of my introduction\
    """

    //Without "\", your string will be "Hello, I'm Woddy\This is the second line of my introduction" when printed.
    
    ```
    
- #### Integer
    - Integer is used when we want to use/create numbers. Like it’s name, it stores non-fractional values.
    - **```Int```** keyword is used to assign integer data type
    - In swift, we can separate large number as thousands separators to make it easier to read with underscore (it won’t affect anything of your code).
    
    ```swift
    var number1 = 70000
    var number2 = 70_000
    
    //both has the same value & acceptable
    ```
    
- #### Doubles
    - Double is similar with integer, but it is a different type! Double holds fractional values. Double is short of “double-precision floating-point number”. Such a long name though 😭.
    - **```Double```** keyword is used to assign integer data type
    
- #### Booleans
    - Booleans is used to hold either true or false. Yes, it only have 2 values option.
    - **```Bool```** keyword is used to assign integer data type
    
### String Interpolation

This is one of Swift feature that allows you put the variables inside your string. You just need to wrap the variables with **backslash**, followed by **parentheses**.

```swift
var age = 8
var string = "Woody is \(age) years old"
```
</details>


<details>
    <summary> 02 –  COLLECTIONS (ARRAY, DICTIONARY, SET) and ENUMS </summary>

### Collections
- #### Arrays
    - Collections of values which have the same type.
    - Swift array is able to store different type of value. You can use “Any” as the type annotation.
    - Array starts and ends with brackets, each item is separated with comma
        
        ```swift
        let grape = "Purple Grape"
        let apple = "Green Apple"
        let melon = "Yellow Melon"
        
        let fruits = [grape, apple, melon]
        let myFruits : [String]= [grape, melon] // if use type annotations
        
        let mixedData : [Any] = ["Hello", 0, "This is text", 0.93]
        ```
        
    - If you want to read/access an item in specific index, you just need to put the numerical position:
        
        > array index starts from 0 (zero-based), and your code will crash if you use an invalid index
        
        ```swift
        // read an item in index 1 which is apple
        fruits[1] 
        fruits[5] //error, because the array only have 3 items, so max index number is 2
        ```
        
    
- #### Sets
    - Similar with array, but:
        - All items is unique, **no duplicate items**
        - The items are **not stored in any order**, they are stored automatically by system based on efficiency
        - We can make sets from arrays
        
        ```swift
        //make a set from array
        let colors = ["red", "green"]
        let myColors = Set(colors)
        
        //make a set directly
        let rainbow = Set(["red", "yellow", "green"])
        let rainbow = Set(["red", "yellow", "green", "red"]) // the second entry of "red" is ignored
        ```

  
        > If you need to check if “a value” exist, you can use sets. Sets have better optimization in searching instead of array which need to search all over the index start from the first index.
        >
        > 
        > Example: search a word in dictionary, phone number in contact list, etc.
        
- #### Tuples
    - Similar with arrays, but:
        - The **size is fixed**, can’t be added or removed.
        - The **item value** **can** be **changed**, but the **item** **type can’t**.
        - The item can be **access using its numerical position or name**.
        - You can assume **tuple** as an **object**, and **the items** as the object’s **properties/ attributes**.
    
    ```swift
    var randomValue = (2, 1, 6, 3, 9)
    
    var movie = (title:"Coda", dateReleased:"2021", genre:"comedy-drama")
    
    //access the items/properties
    movie.0 // result:"Coda", because it accessed the 1st item which is title
    movie.title //result:"Coda", because it accessed the item name directly
    ```
    
    
    > Tuple’s item **can be accessed by the position number or the item name**. It **better to store different type** of value in tuple, because it would be confusing and ugly if you combines multiple data types in an array.
    

    > **When to use?**
    >
    > **- Tuple:** store a specific & fixed collection of related values
    > 
    > **- Sets:** store an unique values, and need to search the item very quickly
    >
    > **- Array:** store a collection of values that accept duplicates, the order of the items matters

- #### Dictionaries
    - Similar with arrays, but:
        - The item stored using a name or identifiers. The item identifiers is called **key**.
        - The items **not store in an index**. So, You call the items with the key, not the index.
        
        ```swift
        let finalScore = [
            "Student1": 90,
            "Student2": 80,
        ]
        
        finalScore["Student1"] // get the final score of Student1
        
        // use type annotation
        let finalScore : [Int]= [
            "Student1": 90,
            "Student2": 80,
        ]
        ```
        
    - ##### Default values in dictionary
        
        When we ask for a value of key that doesn’t exist, it will returns a **nil** value. We can use “default” to get back an default value when the data we want is not exist. It’s like a “backup value”.
        
        ```swift
        let finalScore = [
            "Student1": 90,
            "Student2": 80,
        ]
        finalScore["Student3", default:0] // get the default value "0" instead of nil because Student3 didn't exist
        ```
        
        > Default value is optional, based on your need.
        

### Creating Empty Collections

Here is the syntax of creating empty collections:

- #### Array
    
    Array can be created using Swift special syntax or angle bracket syntax
    
    ```swift
    //swift special syntax
    var myArray : [Int] = []
    var myArray = [Int]()
    
    //angle bracket syntax
    var myArray = Array<Int>()
    ```
    

- #### Dictionary
    
    Same with array, dictionary can be created using Swift special syntax or angle bracket syntax
    
    ```swift
    //swift special syntax
    var myDictionary = [String: String]()
    var myDictionary [String: String] = [:]
    
    //angle bracket syntax
    var myDictionary = Dictionary<String, String>()
    
    //add items 
    myDictionary["EN"] = "English"
    ```
    
- #### Set
    
    Set only can be created using angle bracket syntax
    
    ```swift
    var mySet = Array<Int>()
    ```
    
- #### Tuple
    
    It’s rare to use an “empty tuple”, because we need to set the items directly when creating it. But, we can model a missing tuple value. We need to make the tuple *optional*.
    
    ```swift
    var myTuple: (key: String, val: Int)? = nil
    ```
    
    *Note: There is an empty tuple, but it used as the return type of function void (function that return nothing)* 
    
    [Swift: Declaring empty tuples](https://stackoverflow.com/questions/33357892/swift-declaring-empty-tuples)
    

> An empty array can help you to calculate your data, especially when you don’t know or didn’t have any data at first.
> 

### Enumerations (enums)

- It is a way to define a group of related values to makes them easier to use.
- It helps you decrease the ambiguity of your code.
- For example, we need a value to represent whether the process is success or not. We define “success” value when it succeed and “fail” when it failed. Then, we accidentally use different naming, we use “succeed” value to define success. It will create a new meaning, and it defines 2 value to define the process is success.
    
    ```swift
    // manually define the value 
    let result = "fail"
    let result2 = "success"
    let result3 = "succeed"
    
    // grouped the values as a group of result desc using enum
    enum Result {
        case success
        case failure
    }
    let result4 = Result.failure
    ```
    
    *This prevent you from accidentally using different strings each time.*
    
- #### Associated Values
    
    We can add **additional information** to an enum case.
    
    ```swift
    enum Activity {
        case bored
        case running(destination: String)
        case talking(topic: String)
        case singing(volume: Int)
    }
    
    let sing = Activity.singing(volume: 5) // The activity is singing with volume 5 db (desibel)
    ```
    
- #### Raw Values
    
    Raw value used to add a “**meaning**” of an enum case.
    
    - Define the type of raw values after the variable name.
    - In case of number type of raw value, Swift automatically assign each case with a number starts from 0. If you just set an integer value on the first item only, the rest will automatically generated. But it only works in Integer value only.
    
    ```swift
    // Integer type
    enum Priority: Int {
        case low = 1
        case medium
        case high
    }
    Priority(rawValue: 2) // returns "medium"
    
    // Double type
    enum Priority: Double {
        case low = 1
        case medium
        case high
    }
    Priority(rawValue: 2) // returns "medium"
    Priority(rawValue: 2.0) // returns "medium"
    Priority(rawValue: 2.7) // returns nil
    ```
    
    ```swift
    // Do not do this! It'll give you error!
    enum Priority: Double {
        case low = 1.5
        case medium
        case high
    }
    
    // instead do this
    enum Priority: Double {
        case low = 1.0
        case medium = 2.5
        case high = 5
    }
    ```
</details>




