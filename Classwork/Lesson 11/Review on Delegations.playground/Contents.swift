/****************Country.swift***********************/
protocol CountryDelegate{
    func negotiate()
    
}

class Country {
    var delegate: CountryDelegate?
    
    func performNegotiation() {
        
        if let delegate = delegate {
            delegate.negotiate()
        }
    }
    
}

/**************************************************/

/****************Ambassador.swift******************/

// Spokesperson takes orders from Coutnry, so Spokesperson is the Delegate
class Ambassador: CountryDelegate {
    func negotiate() {
        println("I shall negotiate")
    }
    
    func startWar() {
    
    }
}

/**************************************************/

//let usa = Country()
let devin = Ambassador()
//usa.delegate = devin --> removed from code to highlight override example
//usa.performNegotiation()

/******************Lieu.swift**********************/
class Lieu: Ambassador {
    override func negotiate() {
        super.negotiate()
        println("I shall start a war!")
    }
    
    override func startWar() {
        super.startWar()
        println("I shall start a war!")
    }
    
}
/**************************************************/

let usa = Country()
let luke = Lieu()
usa.delegate = Lieu()

usa.performNegotiation()

