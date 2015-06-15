var y: Int? = nil
y = 10


// Optional Binding
var age: Int?

if let  unwrappedAge = age {
    "The person is \(unwrappedAge) years old"
} else {
    "The variable, 'age', was not set."
}

// May use age = 10 or some number to see the statement; however, if an Optional is not set - it can lead to a program crashing. The crashing may not occur on Playground, but it will happen in Project and impact the app (won't be launched or uploaded to the account)

// Expectation in class

var age: Int? //nil

if let age = age {
    println("age: \(age!)")
} else {
    // age = 100
}


// Forced Unwrapping

var age: Int? = 10

if let _ = age {
        println("age: \(age!)")
} else {
    age = 100
}

