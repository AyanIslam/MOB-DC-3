// Declare Dictionary [Long Way]
let constDict = Dictionary<String, String>(dictionaryLiteral: ("Devin", "White"), ("Luke", "navy blue"))

// Declare Dcitionary [Short Way]
var dict = ["Luke": "navy blue", "Devin": "white"]
dict["kris"] = "lime green"
dict["Luke"] = "black"
dict
dict.count
dict.keys.array

dict.values.array


dict.removeValueForKey("Luke")
dict

var people = ["Arthur": 29, "Thomas": 23]

var profile1: [String: AnyObject] = ["Name": "Arthur", "Age": 29, "Location": "USA"]

var profile2: [String: AnyObject] = ["Name": "Thomas", "Age": 23, "Location": "Belgium"]

var friends = [(String: AnyObject)] = [profile1, profile2]

println(friends)



