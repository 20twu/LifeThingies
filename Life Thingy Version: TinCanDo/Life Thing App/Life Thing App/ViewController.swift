//
//  ViewController.swift
//  Life Thing App
//
//  Created by Tianchen Wu on 2017. 12. 09..
//  Copyright © 2017. Tianchen Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {

    @IBOutlet weak var AddName: UITextField!
    @IBOutlet weak var returnedText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a knib.
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //Initialises a new class of life
    class life {
        
        var intelligence = 0
        var money = 0
        var addiction = false
        var living = false
        var death:UInt32 = 0
        var age = 0
        
        func getBorn(){
            let parentLevel:UInt32 = arc4random_uniform(5) + 1
            
            if parentLevel == 5{
                money += numericCast(arc4random_uniform(40001) + 20000)
            }else if parentLevel == 4{
                money += numericCast(arc4random_uniform(30001) + 10000)
            }else if parentLevel == 3{
                money += numericCast(arc4random_uniform(20001))
                
            }else if parentLevel == 2{
                money -= numericCast(arc4random_uniform(30001) + 10000)
            }else if parentLevel == 1{
                money -= numericCast(arc4random_uniform(40001) + 20000)
                addiction = true
            }
            self.death = arc4random_uniform(101)
            living = true
        }
        
        func privateSchool(){
            money -= 2000
            intelligence += 5
        }
        func publicSchool(){
            intelligence += 2
        }
        func childWork(){
            money += 500
            intelligence += 1
        }
        
        func findWork(){}
        
        func goToSchool(_ name: String){
            age = 5
            while age < 17 {
                if money > 0 && self.death > age
                {
                    privateSchool()
                    age += 1
                    print("At age \(age), \(name) went to a private school")
                } else if money > -20001 && self.death > age
                {
                    publicSchool()
                    age += 1
                    print("At age \(age), \(name) went to a public school")
                } else if self.death > age {
                    childWork()
                    age += 1
                    print("At age \(age), \(name) had the fun time of working as a totally legal child labourer")
                } else{
                    age = 1000
                    print("At the age of \(self.death) \(name) died")
                    
                }
            }
            
        }
        
    }


    
    @IBAction func Start(_ sender: Any) {
        let person = life()
        person.getBorn()
        if AddName.text == ""{
            returnedText.text = """
            Please insert name to play
            """
        } else if person.death == 0{
            returnedText.text = """
            Unfortunately \(AddName.text!) did not survive the traumatic event of being born
            """
        }else{
        returnedText.text = """
            At birth \(AddName.text!) has \(person.money) money
            """
        }
    }
 
}

