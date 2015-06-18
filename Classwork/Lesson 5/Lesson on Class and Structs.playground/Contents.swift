/*

    Classes v. Structs

    Classes: Pass by Reference
    Structs: Pass by Copy
*/

class Car {
    var wheels: Int
    
    init (wheels: Int) {
        self.wheels = wheels
    }
}

struct Line {
    var length:Int
}

var myCar = Car(wheels: 4)
myCar.wheels = 10

var thomasCar = myCar
thomasCar.wheels = 6

myCar.wheels
thomasCar.wheels

// Shows the difference between Struct and Class 
// Class uses the same information in the memory but Struct copies the information and uses another data set in another memory area
// That's why the class answers for both cars are the same, since it's using the same data from the same memory location; while the struct answers have independent data in separate memory locations that its pulling from

var myLine = Line (length: 10)
myLine.length = 20

var secondLine = myLine
secondLine.length = 30

myLine.length
secondLine.length
