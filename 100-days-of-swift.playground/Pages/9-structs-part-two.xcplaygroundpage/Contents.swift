import Foundation

// By default each struct comes with the memberwise initializer
struct User {
    var username: String
}

// This default initializer allows us to create new instances like this
// let user = User(username: "twostraws")

// But we also can provide an additional initializer that would replace the default one. However, note that the default initializer will only be removed if a custom initializer is specified inside a struct (not as a part of an extension)
extension User {
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "twostraws"

// Lazy properties
struct FamilyTree {
    
    // Assume that initializing the struct takes a lot of time
    init() {
        print("Creating family tree!")
    }
}

// If lazy keyword is used then familyTree initializing will happen only when it's accessed for the first time
struct Person {
    var name: String
    lazy var familyTree = FamilyTree()
}

// Side note: lazy properties can not be used on constants since they change the original object
var person = Person(name: "Boris")

print(person.name)
print(person.familyTree)

// Static properties that allow to share a value between all instances
struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let student = Student(name: "Arkady")
let anotherStudent = Student(name: "Vasily")
Student.classSize

// Access control: a struct with a private property and its designated getter
struct AnotherPerson {
    private var id = Int.random(in: 1..<1_000_000)
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let anotherPerson = AnotherPerson(name: "Sasha")
anotherPerson.name
anotherPerson.identify()
