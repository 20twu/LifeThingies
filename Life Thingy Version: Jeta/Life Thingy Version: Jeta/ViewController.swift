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

//created class for variables
    class genVar {
        
        //class for low fluct var
        
        //class for med fluct var
        class medFluctVar {
            
            var intelligence: Int = 0
            var money: Int = 0
            var age: Int = 0
        }
        
        
        //class for high fluct var
        class mood{
            
            //class for basic emotions
            class basicEmo {
                
                var happyLvl: Int = 0
                var sadLvl: Int = 0
                var angerLvl:  Int = 0
                var disgustLvl: Int = 0
                var fearLvl: Int = 0
            }
            
            //class for feelings
            class feel{
                
            var prideLvl: Int = 0
            var sexxualArousalLvl: Int = 0
            var stability: Int = 0
            }
        }
    }
            
            
//created class for boolean
    class genBool {
        
        var living: Bool = false
        var stilborn: Bool = false
        var addiction: Bool = false
        
    }
}
