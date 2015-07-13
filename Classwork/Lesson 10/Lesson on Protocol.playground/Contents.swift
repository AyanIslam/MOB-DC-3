// Protocol
// sets shared descriptors/items/characteristics

protocol Characteristics {
    
    var isAlive: Bool { get set }
    
    func eat()
}

protocol Holidays {
    var isChristmas: Bool { get }
    func birthday(day: NSCalendar) -> Bool
}

class Human {
    
}

class Animal {
    
    var isAlive: Bool = false
    
    func eat() {
        
    }

}

let cat = Animal()
cat.isAlive = true


// be careful with what you require in protocol --> can lead to a lot of coding that can impact the program/app | not the same one to one mapping as objective C

class Cat: Animal, Holidays {
    
    var isChristmas = true
    
    func birthday(day: NSCalendar) -> Bool {
        return true
    }

}

let tiger = Cat()


