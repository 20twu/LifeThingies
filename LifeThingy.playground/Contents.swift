//: Playground - noun: a place where people can play
//There are a lots of non-scaleable things to be changes, but it's too spaghetti right now and i'm just trying to get things to work from the things i already have. soooooo....
import UIKit
//Initialises a new class of life
class life {
//creates two Int variables for a specific instance of class life to have
var intelligence = 0
var money = 0
    
//The function to give a random number when called by the parents function
func parents() -> UInt32 {
    return arc4random_uniform(6) + 1
    }

//Functions for which school the instance of life will go to or if they have no money, they will go to childWork
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
    
//Unfinished finWork Function, probably will be determined by how much intelligence value each instance will have
func findWork(){}

//Creates another two bool variables for instances
var addiction = false
var living = false

//Function getBorn will decide what kind of parents the child will have and whether or not they are born addiction
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

//Function for going to school for 12 yrs, goes to different schools depending on the amount of money you inherited from parents
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
// Spaghetti func for now as I figure out how to do this in another func
    func addict() -> String{
        if life().addiction == true{
            return "addicted to drugs"
        } else {
            return "not addicated to drugs"
        }
    }
}
//Creates the soul for our fist test child!!!
let Bob = life()
//Given life to our first test child!!!
Bob.getBorn()
print("At birth, Bob is \(Bob.addict()) and has \(Bob.money) money")

Bob.goToSchool("Bob")
print("After 12 years of schooling/working, Bob gained \(Bob.intelligence) intelligence points and is now looking at prospective jobs.")
//HAHAHAHAHAHAHAHAHHAHAHAHAHAHAHA This actually worked, you don't even know how elated I feel right now. I couldn't stop myself from screamwhispering and laughing.
