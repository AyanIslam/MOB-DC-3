// Define Array (Long Syntax)
var longArray = Array<String>(arrayLiteral: "Kris", "Luke", "Handy")
longArray.append("Thomas")

// won't allow an appending if using "let" --> constants are immutable and won't allow for change

// Define Array (Short Syntax)
var shortArray = ["Kris", "Luke", "Handy"]
shortArray.append("Thomas")


// [] these types of brackets will be seen with Arrays, Syntax, and Dictionaries
// It's inferring an array of Strings and the compiler will handle it

//shortArray.append("4")

// shortArray.append(4) -> cannot invoke 'append' with an argument list of type '(Int)' | It's showing as "4" because it's listed as a String

// Count number of elements
shortArray.count

// Long way of iterating over an array
//for i in 0..<shortArray.count {
    //println(shortArray (i))
    //println(i)

//}

// Short way of iterating over an array
for i in shortArray {
    print(i)
}

// Remove last item
let lastValue = shortArray.removeLast()
shortArray
lastValue


// Repopulate list
shortArray.append("Kate")
shortArray.append("Thomas")
shortArray.append("Rashad")

shortArray += ["Dave", "Cindy"]

// Remove one element in the middle
let removedValye = shortArray.removeAtIndex(2)
shortArray

// Is the Array empty?
shortArray.isEmpty

// Create an empty array
var emptyArray = [String]()
emptyArray.isEmpty

// Literal Syntax Reminder
let myName = "Arthur"
let myAge = 29
println("My name is \(myName) and my age is \(myAge)")

// Collection Literals
// Array Literal [,]

// Subscripting
shortArray
shortArray[0] = "Aaron"
shortArray
println("My name is \(shortArray[0])")

shortArray[1]



