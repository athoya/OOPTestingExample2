//
//  CoffeMachine.swift
//  OOPTestingExample2
//
//  Created by Jazilul Athoya on 15/05/19.
//  Copyright © 2019 Jazilul Athoya. All rights reserved.
//

import Foundation

class CoffeMachine : Machine {
    
    var numOfBeans: Int = 100
    var numOfMilk: Int
    var brand: String
    
    init(milk: Int, brand: String) {
        numOfMilk = milk
        self.brand = brand
    }
    
    init(numOfBeans: Int, numOfMilk: Int, brand: String) {
        self.numOfBeans = numOfBeans
        self.numOfMilk = numOfMilk
        self.brand = brand
    }
    
    func addMilk(milk: Int) {
        numOfMilk += milk
    }
    
    func addBeans(beans: Int) {
        numOfBeans += beans
    }
    
    func makeCoffe() {
        numOfMilk -= 1
        numOfBeans -= 2
        print("make coffe")
    }
}
