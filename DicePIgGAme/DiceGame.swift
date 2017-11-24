//
//  DiceGame.swift
//  DicePIgGAme
//
//  Created by Erika Nieto on 11/20/17.
//  Copyright © 2017 Erika Dibenedetto. All rights reserved.
//


import UIKit
import Foundation

class DiceGame{
    //var score : Int = 0
    var currentUser : String = "user"
   // let computer : String = "computer"
    var userScore : Int = 0
    var computerScore : Int = 0
    var dicecube : String = ""
    var diceVal : Int = 0
    //var dice : dice
    
    init(){
        
    }
    
    
    
    

    func setDice(){
    let dicee=dice().computed
      dicecube = dicee
    }
    
    func diceValue(diceName:String)->Int{
        let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
        if(diceName=="dice1"){
            if currentUser == "computer"{
            currentUser = "user"
            computerScore=0
            diceVal = 0
            return diceVal
            }else if currentUser == "user"{
                userScore=0
                diceVal = 0
                currentUser = "computer"
                return diceVal
            }
        }
        if let i = diceArray.index(of: diceName){
            diceVal = i+1
            return diceVal
        }
        return 0
        
    }
    func calculateScore(diceValue : Int){
        if currentUser == "user"{
         userScore = userScore + diceValue
        }else{
         computerScore = computerScore + diceValue
        }
        
    }
    func resetGame(){
        currentUser="user"
        userScore=0
        computerScore=0
        dicecube=""
        diceVal=0
    }
    
    func AIComputer(){
        if(currentUser == "computer"){
            let diceArraycee = ["dice1","dice2","dice3","dice4","dice5","dice6"]
            var test : Int = 0
            //var test2 : String = ""
            let randomNumberForTry = Int(arc4random_uniform(10))
            while test <= randomNumberForTry {
                sleep(3)
                let randomNumber = Int(arc4random_uniform(6))
                    dicecube = diceArraycee[randomNumber]
                    diceVal = diceValue(diceName:dicecube)
                    print (self.dicecube)
                
                 if(dicecube=="dice1"){
                    computerScore=0
                   // currentUser="user"
                  //  print("stop" + currentUser + "currentuser")
                   break;
               }
               
                calculateScore(diceValue : diceVal)
                print(computerScore)
                test+=1
            }
        
    }
    currentUser="user"
}
}
