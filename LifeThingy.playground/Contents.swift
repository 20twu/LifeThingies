//: Playground - noun: a place where people can play

import UIKit

class life {
    
    var intelligence = 0
    var money: UInt32 = 0
    var addiction = false
    var living = false
    var death:UInt32 = 0
    
    func getBorn(){
        let parentLevel:UInt32 = arc4random_uniform(5) + 1
        
        if parentLevel == 5{
            money += arc4random_uniform(40000) + 20000
        }else if parentLevel == 4{
            money += arc4random_uniform(30000) + 10000
        }else if parentLevel == 2{
            money -= arc4random_uniform(30000) + 10000
        }else if parentLevel == 1{
            money -= arc4random_uniform(40000) + 20000
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
            if money > 0 && self.death > year
            {
                privateSchool()
                year += 1
                print("At age \(year), \(name) went to a private school")
            } else if money > -100001 && self.death > year
            {
                publicSchool()
                year += 1
                print("At age \(year), \(name) went to a public school")
            } else if self.death > year {
                childWork()
                year += 1
                print("At age \(year), \(name) had the fun time of working as a totally legal child labourer")
            } else{
                year = 1000
                print("At the age of \(self.death) \(name) died")
                break
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
bob.death
