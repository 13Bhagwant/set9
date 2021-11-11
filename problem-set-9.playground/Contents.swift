/*:
# DGL 204: Problem Set 9
*/
//Imports
import Foundation
/*:
### Problem 1
**Goal**: Write a new enumeration `Course` that lists all the courses you are enrolled in this year and a function to print associated course names.
 
**Requirements**:
1. Write a new enumeration `Course` that includes all courses you are enrolled in this year listed by program identifer and course code (i.e. this course is `dgl204`).
2. Write a new function `printCourseName(for:)` that uses an `if` statement to print the English course name for **at most** two courses, and a default generic print statement for all others, based on the course given by the `for` parameter (make sure you use an appropriate internal paramter label!).
3. Call your `printCourseName(for:)` function twice with different `Course` values supplied each time.

**Expected output**: Two print statements that demonstrate the correct application of the `Course` enumeration inside the `printCourseName(for:)` function.
*/
//Replace this comment with your solution
/*:
### Problem 2
**Goal**: Write a new `Planet` enumeration and a `switch` statement to distinguish between the cases.

**Requirements**:
1. Write a new enumeration `Planet` that includes cases for all eight planets.
2. Create a new instance of `Planet` and store it in an appropriately named identifier.
3. Write a `switch` statement that switches on the indentifer created in step 2 and prints a console statement for each of the eight `Planet` cases (Question: do you need a `default` case in this scenario?)
 
**Expected output**: A print statement that correct identifies the planet referenced in the `Planet` instance.
*/
//Replace this comment with your solution
/*:
### Problem 3
**Goal**: Create a new enumeration `Color` that contains raw values and a computed property.

**Requirements**:
1. Write a new type called `Color` with a `String` raw value type.
2. Create four color cases as part of `Color` and assign raw values of type `String` to each. Raw values should be the name of the color all in lowercase letters.
3. Create a computed property `upperCase` that returns the raw value of the enum in all uppercase letters.
4. Declare a new instance of the `Color` enum and call `upperCase` on it.

**Expected output**: An instance of `Color` with a `String` raw value correctly representing the color that is converted to uppercase via the `upperCase` computed property.
*/
//Replace this comment with your solution
/*:
### Problem 4
**Preamble**: The [`Date`](https://developer.apple.com/documentation/foundation/date) class can be used to create a new `Date` object initialized to the precise time of initialization as follows:
 
    let date = Date()
 
Any instance of `Date` also has access to the `timeIntervalSinceReferenceDate` computed property that returns the difference in *seconds* between the given `Date` instance and 00:00:00 UTC on 1 January 2001. A new `Date` instance can also be created given a number of seconds *since* 00:00:00 UTC on 1 January 2001 via:
 
    let date = Date(timeIntervalSinceReferenceDate: seconds)
 
where `seconds` is the number of seconds since 00:00:00 UTC on 1 January 2001.
 
**Goal**: Write a new *uninhabited type* `DateUtil` using type methods.

**Requirements**:
1. Write a new enumeration `DateUtil` that contains the following type methods:
    1. `add(hours:to:) -> Date` that adds a specified number of hours to a given date.
    2. `add(hours:to:) -> Date` that adds a specified number of days to a given date.
    3. `add(hours:to:) -> Date` that adds a specified number of years to a given date (note for the purposes of this problem you may assume that a year is exactly 365 days).
2. Create a new `Date` instance and use `DateUtil` three times to add one each of a number of hours, days and years to your `Date` instance.
 
**Expected output**: New `Date` values caculated from the given `Date` instance and the `DateUtil` uninhabited type.
*/
//Replace this comment with your solution
/*:
### Problem 5
**Preamble**: An [ISBN](https://en.wikipedia.org/wiki/International_Standard_Book_Number) is a numeric identifer used to uniquely identify a specific edition of a published book in any format (e.g. hardcover, softcover, trade paperback, ebook, etc.). ISBNs assigned before Jan. 1 2007 were 10 digits in length, and those assigned after Jan. 1 2007 are 13 digits in length; each ISBN can be broken down into four (10-digit ISBN) or five (13-digit ISBN) components as depicted below:

![ISBN](isbn-small.png)
 
The final digit (or digits) in an ISBN is check digit. Check digits are used to ensure that the other numbers of the ISBN are correct by defining a specific procedure for adding and reducing all other integer values in the ISBN to a single digit - this digit must match the check digit for the ISBN to be consider valid. This type of procedure is used in many applications - not just in ISBNs. You can read more about the specific implementation of the check digit for ISBN-10 and ISBN-13 on the Wikipedia article linked to above.
 
We're going to assume, for the purposes of this problem, that the check digit is the sum of all other integer components modulo 10 (i.e. it's the sum of the three or four integer components - other than the check digit component - operated on by the module operator with modulo 10: `% 10`). Therefore, the check digit will be a single-digit number.
 
**Goal**: Write a new enumeration `ISBN` that uses associated values and a function that checks for a valid ISBN.

**Requirements**:
1. Write a new enum `ISBN` that has two cases for each of 10-digit and 13-digit ISBNs.
2. Each of the two cases should use associated values to handle the four or five groups of integer values.
3. Write a new function `validate(_: ISBN) -> Bool` that returns `true` if `mod10` of all components in the ISBN (other than the check digit) summed together equals the value of the check digit, and `false` otherwise. (HINT: Consider the approach used in the textbook in the *Associated Values* section; a `switch` statement in the `validate` function may be a good choice).
3. Create a new instance of `ISBN` stored in an appropriately named identifier and pass this instance into `validate(_:)`
 
**Expected output**: A `true` or `false` value based on the `ISBN` value given and the correct application of the `validate(_:)` function as described above.
 */
//Replace this comment with your solution
/*:
### Problem 6
**Goal**: Use the code from chapter 15 challenge 3 as a basis for a `Game` class that uses the `Direction` enumeration.
 
**Requirements**:
1. Copy code from chapter 15 challenge 3 as necessary.
2. Write a new `Game` class that has stored properties `location` (identical to challenge 3) and `moveHistory` (similar to `movements` from challenge 3 **but** should be *declared* as an optional and *not* initialized).
3. Write two methods for `Game`: `move(_:)` which is used to update `location` given a `Direction` enum as a parameter (similar to the `switch` statement in challenge 3) and `printMoves()` that prints out "No moves yet!" if `moveHistory` is empty and a statement describing the `location` and `moveHistory` otherwise (see example output below).
4. Note that you should also have an `init` method (favour initializing stored properties in `init` methods, rather than with default values at declaration).
5. Create an instance of `Game` and call `move(_:)` at least three times with appropriate parameters, then call `printMove()`.
 
**Expected output**: A print statement that demonstrates a correct `location` value and `moveHistory` based on the values provided. Here is some example output:
 
     After 3 moves the player sits at (x: 1, y: 0)
     Move list:
     north
     east
     south
*/
//Replace this comment with your solution
/*:
### Problem 7
**Preamble**: *Recursive enumerations* are discussed at the end of the [Enumerations chapter](https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html) in the [Swift.org Language Guide](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html).

**Goal**: Use the code presented in the *Recursive Enumerations* section of the [Swift.org Langauge Guide](https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html) to write a new impementation of `AritmeticExpression` that include `subtraction`, `division` and `modulo`, and rewrite the `evaluate` function accordingly.

**Requirements**:
1. Read through the documentation on *Recursive enumerations* at Swift.org.
2. Copy the code for `ArithmeticExpression` and `evalute(-:)`.
3. Add enumeration cases for `subtraction`, `division` and `modulo` to `ArithmeticExpression`.
4. Add cases for `subtraction`, `division` and `modulo` to `evaluate(_:)`.
 5. Create a new `quotient` `ArithmeticExpression` that takes at least one recursive enumeration as a parameter and pass `quotient` into `evaluate(_:)`.

**Expected output**: A correct answer from the `evaluate(_:)` function that represents the quotient of the values defined via `ArithmeticExpression`.
*/
//Replace this comment with your solution
