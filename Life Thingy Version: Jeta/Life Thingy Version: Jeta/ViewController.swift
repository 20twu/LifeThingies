//
//  ViewController.swift
//  Life Thingy Version: Jeta
//
//  Created by Jia Hao Ji on 2017. 12. 11..
//  Copyright © 2017. Jia Hao Ji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//created class for variables
class genVar {
    
    //time
    var age: Int
    var time: Int
    
    //resource
    var intelligence: Double
    var money: Double
    
    //basic emotions
    var happyLvl: Double
    var sadLvl: Double
    var angerLvl:  Double
    var disgustLvl: Double
    var fearLvl: Double
    var supriseLvl: Double
    
    //feelings
    var prideLvl: Double
    var sexxualArousalLvl: Double
    var stabilityLvl: Double
    
    //conditions
    var alive: Bool
    var stilborn: Bool
    var addiction: Bool
    var depression: Bool
    
    //initialize base of all vars/bools
    init () {
        //time
        age = 0
        time = 0
        
        //resource
        intelligence = 0
        money = 0
        
        //basic emotions
        happyLvl = 0
        sadLvl = 0
        angerLvl = 0
        disgustLvl = 0
        fearLvl = 0
        supriseLvl = 0
        
        //feelings
        prideLvl = 0
        sexxualArousalLvl = 0
        stabilityLvl = 0
        
        //conditions
        alive = false
        stilborn = false
        addiction = false
        depression = false
    }
}

class inherentModifiers: genVar {
    var income: Double
    
    init () {
        
    }
}

class prelifeFunc: inherentModifiers {
    func calcParentWealth() {
        let parentWealth = arc4random_uniform(5) + 1
        if parentWealth >= 5 {
            money += 15000
            
        }
    }
    
    func calcParentSkills() {
        let parentSkills = arc4random_uniform(5) + 1
        if parentSkills >= 5 {
            
        }
    }
}
