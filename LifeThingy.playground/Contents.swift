//: Playground - noun: a place where people can play

import UIKit

class life {
    
    var intelligence = 0
    var money = 0
    
    func parents() -> UInt32 {
        return arc4random_uniform(6) + 1
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
    
    var addiction = false
    var living = false
    
    func getBorn(){
        let parentLevel:UInt32 = parents()
        
        if parentLevel == 5{
            money += 200000
        }else if parentLevel == 4{
            money += 100000
        }else if parentLevel == 2{
            money -= 100000
        }else if parentLevel == 1{
            money -= 200000
            addiction = true
        }
        
        living = true
    }
    
    func goToSchool(_ name: String){
        var year = 5
        while year < 17 {
            if money > 0
            {
                privateSchool()
                year += 1
                print("At age \(year), \(name) went to a private school")
            } else if money > -100001
            {
                publicSchool()
                year += 1
                print("At age \(year), \(name) went to a public school")
            } else {
                childWork()
                year += 1
                print("At age \(year), \(name) had the fun time of working as a totally legal child labourer")
            }
        }
        
    }
    func addict() -> String{
        if self.addiction == true{
            return "addicted to drugs"
        } else {
            return "not addicated to drugs"
        }
    }
}


