protocol Automotive {
    func drive()
    func honk()
    func turnOnLights()
}

class Car: Automotive {
    func drive() {
        
    }
    
    func honk() {
        
    }
    
    func turnOnLights() {
        
    }
}

class Train: Automotive {
    func drive() {
        
    }
    
    func honk() {
        
    }
    
    func turnOnLights() {
        
    }
    
}

let honda = Car()
let porsche = Car()
let thomas = Train()

var array = [Automotive]()
array.append(honda)
array.append(porsche)
array.append(thomas)

for v in array {
    v.drive()
}
// Delegation, notification, blocks are the three ways to communicate between blocks

// Delegation

/************Country.swift********/
protocol Delegate {
    func startAWar()
    func makePeace()
    
}

class Country {
    var delegate: Spokesperson?
    
    func causeProblems() {
        if let delegate = delegate {
            delegate.startAWar()
            
    }
        
    func causeProblems() {
        if let delegate = delegate {
            delegate.makePeace()
        }
    }
}

/*************Spokesperson.swift*********/

class Spokesperson: Delegate {
    func startAWar() {
        
    }
    
    func makePeace() {
        
    }
}

let handy = Spokesperson()
let france = Country()
france.delegate = Country()

