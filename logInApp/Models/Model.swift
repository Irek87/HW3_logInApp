//
//  LoginPasswordPerson.swift
//  logInApp
//
//  Created by Reek i on 16.03.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(login: "1", password: "1", person: Person(name: "Irek", surname: "Iunusov", job: "FKU", hobby: "sport & Swift"))
    }
}

struct Person {
    let name: String
    let surname: String
    let job: String
    let hobby: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

