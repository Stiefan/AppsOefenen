//
//  test1.swift
//  ola
//
//  Created by Stefan Marges on 17/04/15.
//  Copyright (c) 2015 Stefan Marges. All rights reserved.
//

import Foundation

class Person {
    var firstName = ""
    var lastName = ""
    var Age = 0
    
    func input() -> String {
        let keyboard = NSFileHandle.fileHandleWithStandardInput()
        let inputData = keyboard.availableData
        let rawString = NSString(data: inputData, encoding:NSUTF8StringEncoding)
        if let string = rawString {
            return string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        } else {
            return "Invalid input"
        }
    }
    func changeFirstName(newFirstName:String)  {
        firstName = newFirstName
        
    }
    func enterInfo() {
        println("What is your first name?")
        firstName = input()
        println("What is your last name?")
        lastName = input()
        println("What is your age?")
        let UserInput = input().toInt()
        if let number = UserInput {
            Age = number
        }
        
    }
    func printInfo() {
        println("firstname: \(firstName), lastname: \(lastName), age: \(Age)")
    }
}


