// Olivia Gauthier

/////////////////////////////////////////////////
// Challenge 1.1: Personal Info Card
let firstName: String = "Olivia"
let lastName: String = "Gauthier"
var age: Int = 21
var isStudent: Bool = true

age = 22
//firstName = "Liv" //Cannot assign to value: 'firstName' is a 'let' constant

/////////////////////////////////////////////////
// Challenge 2.1: user Profile
let username: String
var userBio: String? = nil

if let unwrappedUserBio = userBio {
    print("Bio: \(unwrappedUserBio)")
} else {
    print("No bio provided")
}

userBio = "This is a user bio"

if let unwrappedUserBio = userBio {
    print("Bio: \(unwrappedUserBio)")
} else {
    print("No bio provided")
}

let displayBio = userBio ?? "No public bio"
print(displayBio)

/////////////////////////////////////////////////
// Challenge 3.1: Grade Calculator
let numericGrade: Int = 70

if numericGrade >= 90 && numericGrade <= 100 {
    print("Your grade is A")
} else if numericGrade >= 80 && numericGrade < 90 {
    print("Your grade is B")
} else if numericGrade >= 70 && numericGrade < 80 {
    print("Your grade is C")
} else if numericGrade >= 60 && numericGrade < 70 {
    print("Your grade is D")
} else {
    print("Your grade if F")
}

switch numericGrade {
case 90...100:
    print("Your grade is A")
case 80..<90:
    print("Your grade is B")
case 70..<80:
    print("Your grade is C")
case 60..<70:
    print("Your grade is D")
default:
    print("Your grade is F")
}

/////////////////////////////////////////////////
// Challenge 4.1: Simple Calculator Functions
func subtract(num1: Int, num2: Int) -> Int {
    return num1 - num2
}

print(subtract(num1:5, num2:3))

//func greetUser(name: String, message: String) -> String {
//    return "Hello \(name), \(message)"
//}
//
//print(greetUser(name: "Liv", message: "I hope you're doing well!"))
//print(greetUser(name: "Rick", message: "I miss you!"))
//print(greetUser(name: "Rachel", message: "I'll see you later!"))

func greetUser(_ name: String, message: String) -> String {
    return "Hello \(name), \(message)"
}

print(greetUser("Liv", message: "I hope you're doing well!"))
print(greetUser("Rick", message: "I miss you!"))
print(greetUser("Rachel", message: "I'll see you later!"))

/////////////////////////////////////////////////
// Challenge 5.1: User and Post Models

class User {
    var id: String
    var username: String
    
    init(id: String, username: String) {
        self.id = id
        self.username = username
    }
}

struct BlogPost {
    var title: String
    var content: String
    var author: User
}

var user1 = User(id: "1181", username: "org1181")

var post1 = BlogPost(title: "First Blog Post!", content: "Hi World, this is my first blog post!", author: user1)

var post2 = post1

post1.title = "New Title!"
post1.author.username = "Liv"
print(post1)
print(post2)

/////////////////////////////////////////////////
// Challenge 6.1: Inventory Management

var items: [String] = []
items.append("Cheese")
items.append("Milk")
items.append("Butter")
print(items.count)

var itemPrices: [String: Double] = [:]
itemPrices["Cheese"] = 3.99
itemPrices["Milk"] = 2.95
itemPrices["Butter"] = 4.49
itemPrices["Bread"] = 5.99

print(itemPrices)

print("Price: \(itemPrices["Cheese"] ?? 0)")
print("Price: \(itemPrices["Cake"] ?? 0)")

for (name, price) in itemPrices {
    print("\(name): \(price)")
}
