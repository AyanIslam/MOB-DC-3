let x = 5

if x > 0 {
    println(x)
} else {
    println(x)
}

// changing the value to negative 5 will not result in any output; however by adding else, it will show the negative number. see example below

let y = -10

if y > 0 {
    println(y)
} else {
    println(y)
}

// To show that an number is less or greater than 0, here's the way to show the dynamic variable in a statement

//let a = -5
//
//if a > 0 {
//    println("Yes, \(a) is greater than zero")
//} else {
//    println("No, \(a) is less than zero")
//}
//
//// Well, what happens when the variable is 0?
//
//let b = 0
//
//if b > 0 {
//    println("Yes, \(b) is greater than zero")
//} else {
//    println("No, \(b) is less than zero")
//}
//
//// To address the prior issue in the statement
//
//let d = 0
//
//if d > 0 {
//    println("Yes, \(d) is greater than zero")
//} else if d == 0 {
//    println("Woohoo, \(d) is equal to zero")
//} else {
//    println("No, \(d) is less than zero")
//}
//
//// Using the While Loop to evaluate a condition while it's true until it becomes false
//var z = 0
//while z < 100 {
//    println("Hey! \(z)")
//    ++z
//}

// to show the code in the prior lines (21 to 56); hit the command and / keys)

for i in 1..<100 {
    println("Print the current iteration: \(i)")
}

// for the above For In Loop; you can reach 100 times by removing < and adding another period (.) to reach 100 times



