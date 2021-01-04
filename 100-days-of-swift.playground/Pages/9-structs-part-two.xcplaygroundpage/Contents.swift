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

