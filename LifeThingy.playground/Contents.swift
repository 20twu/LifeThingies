//: Playground - noun: a place where people can play

import UIKit

class life {
    
    var intelligence = 0
    var money = 0
    var addiction = false
    var living = false
    var death:UInt32 = 0
    
    func getBorn(){
        let parentLevel:UInt32 = arc4random_uniform(5) + 1
        
        if parentLevel == 5{
            money += 20000
        }else if parentLevel == 4{
            money += 10000
        }else if parentLevel == 2{
            money -= 10000
        }else if parentLevel == 1{
            money -= 20000
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
        var year = 5
        while year < 17 {
            if money > 0
            {
                privateSchool()
                year += 1
                print("At age \(year), \(name) went to a private school")
            } else if money > -10001
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

}

let bob = life()
bob.getBorn()
print(bob.intelligence)
print(bob.money)
bob.goToSchool("bob")
print(bob.intelligence)
print(bob.money)

