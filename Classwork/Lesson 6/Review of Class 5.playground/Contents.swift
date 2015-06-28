import Foundation
import UIKit

// Encapsulation
func unlockApp(serialKey:String) -> Bool {
    let containsProperLength = properLength(serialKey)
    let containsSpecificValues = specificValues(serialKey)
    
    let result = containsProperLength && containsSpecificValues
    
    return true
}

func properLength(serialKey: String) -> Bool {
    let length = count(serialKey)
    let result = (length == 10) ? true : false
    
    return result
}

func specificValues(serialKey: String) -> Bool {
    let result = (serialKey as NSString).containsString("01")
    
    return result
    
}

let password = "PasswordO1"
unlockApp(password)


// Abstraction

class Animal {
    
    var numberOfLimbs: Int
    var mammal: Bool
    var lungs: Bool
    
    init(Limbs: Int, mammal: Bool, lungs: Bool) {
        numberOfLimbs = Limbs
        self.mammal = mammal
        self.lungs = lungs

    }
}

let cat = Animal(Limbs: 4, mammal: true, lungs: true)

// Inheritance

class Cat: Animal {
    var tail: Bool
    
    init(Limbs: Int, mammal: Bool, lungs: Bool, tail: Bool) {
        self.tail = tail
        super.init(Limbs: Limbs, mammal: mammal, lungs: lungs)
    }
}

let tiger = Cat(Limbs: 4, mammal: true, lungs: true, tail: true)



// Polymorphism
func hello() {
    println("Hello world!")
    
}

func hello(name: String) {
    println("Hello, \(name)")
}

func hello(name: String, age: Int?) -> Bool {
    if let age = age {
        println("Hello, \(name)! You're \(age) years old")
    } else {
        println("Hello, \(name)")
    }
    
    return true
}

// Class

class ReferenceTypeExample {
    var name:String
    
    init(name: String) {
        self.name = name
    }
}

let exampleA = ReferenceTypeExample(name: "Arthur")
let exampleB = exampleA
exampleB.name = "Thomas"
exampleA

if (exampleA === exampleB) {
    println("True")
}

func testFunc(example: ReferenceTypeExample) {
    example.name = "Luke"
}

let exampleC = ReferenceTypeExample(name: "Arthur")
(exampleC === exampleA)
testFunc(exampleA)

// Struct

struct ValueTypeExample {
    var name: String
}

var valueExampleA = ValueTypeExample(name: "Arthur")
var valueExampleB = valueExampleA
valueExampleB.name = "Thomas"
valueExampleA


