// private file means only items in this file can access the value
// internal can be accessed anywhere in the current module
// public vs open
// open is least restrictive


//class Monster: CustomStringConvertible, CustomDebugStringConvertible {
//    private var numHeads: Int = 1 //private means only items in this class can access this value
//    private var name: String = ""
//    private var weapons: [String] = []
//    private var undead: Bool
//    
//    // for CustomStringConvertible
//    var description: String {
//        "\(numHeads) \(name), weapons: \(weapons)"
//    }
//    
//    // for CustomDebugStringConvertible
//    var debugDescription: String {
//        """
//            Name: \(name)
//            NumHead: \(numHeads)
//            Weapons: \(weapons)
//            Undead: \(undead)
//        """
//    }
//    
//    init(numHeads: Int, name: String, weapons: [String], undead: Bool) {
//        self.undead = undead
//        setNumHeads(numHeads)
//        set(name: name)
//        set(weapons: weapons)
//    }
//    
//    // designated initializer
//    convenience init() {
//        self.init(numHeads: 1, name: "Orc", weapons: [], undead: false)
//    }
//    
//    func getNumHeads() -> Int {
//        return numHeads
//    }
//    
//    func setNumHeads(_ _numHeads: Int) {
//        if (_numHeads < 0 || _numHeads > 1000) {
//            numHeads = 500
//        } else {
//            numHeads = _numHeads
//        }
//    }
//    
//    func getName() -> String {
//        name
//    }
//    
//    func set(name: String) {
//        self.name = name
//    }
//    
//    func getWeapons() -> [String] {
//        weapons
//    }
//    
//    func set(weapons: [String]) {
//        self.weapons = weapons
//    }
//    
//    func fearsomeRoar() {
//        print("Roar!!!")
//    }
//} //Monster

//let m1 = Monster()
//print(m1) //uses description property
//print(m1.debugDescription)
//m1.fearsomeRoar()
//print("The monster's name is \(m1.getName())")
//m1.set(name: "Dog")
//print("The monster's name is \(m1.getName())")
//m1.setNumHeads(4)
//
//let m2 = Monster(numHeads: 5000, name: "Dwarf", weapons: ["Bad breath", "Hard head"], undead: true)
//print(m2)
//debugPrint(m2)

struct Monster: CustomStringConvertible, CustomDebugStringConvertible {
    
    var numHeads: Int = 1 //private means only items in this class can access this value
    var name: String = ""
    var weapons: [String] = []
    var undead: Bool
    
    // for CustomStringConvertible
    var description: String {
        "\(numHeads) \(name), weapons: \(weapons)"
    }
    
    // for CustomDebugStringConvertible
    var debugDescription: String {
        """
            Name: \(name)
            NumHead: \(numHeads)
            Weapons: \(weapons)
            Undead: \(undead)
        """
    }
    
    init(numHeads: Int, name: String, weapons: [String], undead: Bool) {
        self.undead = undead
        setNumHeads(numHeads)
        set(name: name)
        set(weapons: weapons)
    }
    
    func getNumHeads() -> Int {
        return numHeads
    }
    
    mutating func setNumHeads(_ _numHeads: Int) {
        if (_numHeads < 0 || _numHeads > 1000) {
            numHeads = 500
        } else {
            numHeads = _numHeads
        }
    }
    
    func getName() -> String {
        name
    }
    
    mutating func set(name: String) {
        self.name = name
    }
    
    func getWeapons() -> [String] {
        weapons
    }
    
    mutating func set(weapons: [String]) {
        self.weapons = weapons
    }
    
    func fearsomeRoar() {
        print("Roar!!!")
    }
} //Struct Monster

extension Monster {
    init() {
        undead = false
        numHeads = 1
        name = "Orc"
        weapons = []
    }
}

var m1 = Monster()
print(m1) //uses description property
print(m1.debugDescription)
m1.fearsomeRoar()
print("The monster's name is \(m1.getName())")
m1.set(name: "Dog")
print("The monster's name is \(m1.getName())")
m1.setNumHeads(4)

let m2 = Monster(numHeads: 5000, name: "Dwarf", weapons: ["Bad breath", "Hard head"], undead: true)
print(m2)
debugPrint(m2)
