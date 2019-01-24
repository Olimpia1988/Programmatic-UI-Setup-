//
//  main.swift
//  ProtocolBasics
//
//  Created by Olimpia on 1/16/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import Foundation

protocol NumberFactory {
   // var number: Int { get }
    func getRandomNumber() // we do not define this on the protocol
  
}

struct MyFactory: NumberFactory {
    func getRandomNumber() {
        print(Int.random(in: 0...10)) // here is where we define de function
    }
    
    var number: Int = 5
    var name: String
    func letsParty() {
        print("Party")
    }
}

enum myDopeenum: NumberFactory { // enums can not have stored properties (look up to what is the protocol storing)
    func getRandomNumber() {
        print("Something ")
    }
    
    
}

class MyDopeFactory: NumberFactory {
    func getRandomNumber() {
        print(Int.random(in: 0...25))
       // print("Hello") as long as it prints the implementation does not care whats printing
    }
    
    var number: Int

    init (number: Int) {
        self.number = number
    }
}

//let firstFactory = MyFactory.init(number: 6)
//print(firstFactory.number)

let test = MyFactory.init(number: 5, name: "Ermis")
let secondTest = MyDopeFactory.init(number: 5)

print(test)


// NOTES:
//what can be defined in a method inside a protocol:
//name of the function
//a parameter
//a return
//cannot define the fucntion because protocols do not have bodies
