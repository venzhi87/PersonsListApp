//
//  Person.swift
//  PersonsListApp
//
//  Created by Pavel Kuzovlev on 23.03.2022.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    static func generatePerson() -> [Person] {
        var persons: [Person] = []
        
        let names = Information.dataInfo.names.shuffled()
        let surnames = Information.dataInfo.surnames.shuffled()
        let phoneNumbers = Information.dataInfo.surnames.shuffled()
        let emails = Information.dataInfo.surnames.shuffled()
        
        for index in 0 ..< names.count {
            let person = Person(name: names[index], surname: surnames[index], phoneNumber: phoneNumbers[index], email: emails[index])
            persons.append(person)
        }
        return persons
    }
        
}
