//Camel Casing: camelCasing


// Function names myFunction that takes no parameters and returns no values

func mySimpleFunction() {
    println("Hey, I'm inside my simple function!")
}

mySimpleFunction()

// function named aMoreComplexFunctions that takes one parameter of type Int

func aMoreComplexFunction(number: Int) {
    
    for i in 1...number {
        println(i)
    }
    println("---------------")
}

aMoreComplexFunction(5)
aMoreComplexFunction(6)


// Function named hare that takes two paremeters, one of type Int, and one of type String

func hare(age: Int, name: String) {
    println("My name is \(name) and I am \(age) years old.")
    println("---------------")
}

hare(29, "Arthur")


//Function names functionWithOptional that takes three parameters, one of type Int, one of type String, and one that is of type Optional String (aka: String?)

func functionwithOptional(age: Int, name: String, location: String?) {
    println("My name is \(name) and I am \(age) years old.")
    if let location = location {
        println("... and I am from \(location)")
    }
    println("---------------")
}

functionwithOptional(29, "Arthur", "DC")
functionwithOptional(29, "Arthur", nil)

// If you add nil instead of DC, it won't output the last sentence and only output the first two sentences

// Function named cat that takes one parameter of type String and returns an Optional String

func cat(name: String) -> String {
    let sentence = "My cat's name is \(name) and it goes meow!"
    return sentence
}

let myCat = cat("Charles")
println(myCat)

println (cat("Dan"))

// Funtion named lastFunction that takes four parameters and the Float is an Optional which needs to be unwrapped to created to accept nil as a variable

func lastFunction(alpha: Int, beta: Int, name: String, decimal: Float?) {
    for number in alpha...beta {
        println("My name is \(name) and I have \(number) fingers!")
        
        if let decimal = decimal {
        println("I have $\(decimal) dollars in the bank.")
        } else {
            println("I am poor!")
        }
    }
    println("---------------")
}

lastFunction(1, 10, "Thomas", 3.00)
lastFunction(2, 15, "Luke", nil)


// In class assignment (and read the link provided in Slack on Optionals)



func cat(sound: String, paws: Int?) -> String
    return ("String")












