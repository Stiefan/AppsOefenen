//
//  main.swift
//  ola
//
//  Created by Stefan Marges on 17/04/15.
//  Copyright (c) 2015 Stefan Marges. All rights reserved.
//

import Foundation
var Response: String
var People: [Person] = []

do {
    var NewPerson = Person()
        NewPerson.enterInfo()
        NewPerson.printInfo()
    println("do you want to enter another name (y/n)?")
    People.append(NewPerson)
    Response = input()

    } while (Response == "y")

println("people in the database is \(People.count)")

for onePerson in People {
    onePerson.printInfo()
}
