//
//  ViewController.swift
//  OOPTestingExample2
//
//  Created by Jazilul Athoya on 15/05/19.
//  Copyright © 2019 Jazilul Athoya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var coffeeLabel: UILabel!
    @IBOutlet weak var milkLabel: UILabel!
    
    var coffeMachine = CoffeMachine(milk: 100, brand: "WekaWeka")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateLabel()
        print(coffeMachine.voltage)
        coffeMachine.runMotor()
    }
    
    func updateLabel(){
        coffeeLabel.text = "\(coffeMachine.numOfBeans)"
        milkLabel.text = "\(coffeMachine.numOfMilk)"
    }

    @IBAction func addCoffee(_ sender: Any) {
        coffeMachine.addBeans(beans: 100)
        updateLabel()
    }
    
    @IBAction func addMilk(_ sender: Any) {
        coffeMachine.addMilk(milk: 100)
        updateLabel()
    }
    
    @IBAction func makeCoffe(_ sender: Any) {
        coffeMachine.makeCoffe()
    }
    
}

