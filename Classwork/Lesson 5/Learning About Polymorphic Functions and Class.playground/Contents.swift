
// Polymorphic Function

func car(wheels: Int, doors: Int) {
        println("Woohoo, a simple car with \(wheels) wheels and \(doors) doors")
}

func car(wheels: Int, spoiler: Bool) -> String{
        return "Woohoo, a car with a sunroof and \(wheels) wheels"
}

car(2, 2)

let statement = car(2, true)
println(statement)

// Class

class Car {
    
    var wheels: Int
    var doors: Int
    var name: String
    
    //Initializer Method (aka: Intiliazer Function)
    init() {
        wheels = 4
        doors = 4
        name = "Kia"
    }
}

// myCar is an Object, or an instance of Car()
var myCar = Car()

var michellesCar = Car()

// Getting the value from the property 'name'
println(myCar.name)

// Setting the value of the property 'name' from Kia to BMW
michellesCar.name = "BMW"

// Another example with Optionals

class Vehicle {
    
    var wheels: Int
    var doors: Int
    var name: String?
    
    //Initializer Method (ake: Initializer Function)
    init(wheels: Int, doors: Int, name: String) {
        self.wheels = wheels
        self.doors = doors
        self.name = name
    }
    func drive() -> Bool {
        return true
    }
}

let myVehicle = Vehicle(wheels: 4, doors: 4, name: "Mercedes")
myVehicle.drive()

class Lamborghini: Vehicle {
    var spoiler: Bool?
}

let diablo = Lamborghini(wheels: 4, doors: 2, name: "Diablo")
diablo.spoiler = true











