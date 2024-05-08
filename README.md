Hey everyone, I joined "100 Days with Swift Challenge", and I want to share my learning progress by making the summary about what I learn from it. If you are interested in iOS Development and want to start learning about it, you can join this challenge [here](https://www.hackingwithswift.com/100). Let’s learn it together!

# I. Introduction to Swift
## [Day 1](https://www.hackingwithswift.com/100/1) – variables, simple data types, and string interpolation

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
