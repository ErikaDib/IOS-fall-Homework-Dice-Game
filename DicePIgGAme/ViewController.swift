//
//  ViewController.swift
//  DicePIgGAme
//
//  Created by Erika Nieto on 11/20/17.
//  Copyright © 2017 Erika Dibenedetto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var diceVIewController: UIImageView!
    @IBOutlet var labelDiceValue: UILabel!
    @IBOutlet var userLabel: UILabel!
    @IBOutlet var computerLabel: UILabel!
    @IBOutlet var computerLabelDiceValue: UILabel!
    @IBOutlet var computerDiceView: UIImageView!
    
    private var game : DiceGame = DiceGame()
    
    let queue = DispatchQueue(label:"queue.1")
    
    
    
    
    func updaceDiceImage(){
     // diceVIewController.image =
    }
    
    @IBAction func rollDice(_ sender: UIButton) {
         //let dicee=dice()
        game.setDice()
        diceVIewController.image = UIImage(named: game.dicecube)
        diceVIewController.image = UIImage(named: game.dicecube)
        setLabel()
        
        
        
    }

    @IBAction func resetButton(_ sender: UIButton) {
        game.resetGame()
        userLabel.text=""
        computerLabel.text=""
        labelDiceValue.text=""
        computerLabelDiceValue.text=""
    }
    func setLabel(){
        let value : Int = game.diceValue(diceName: game.dicecube)
        labelDiceValue.text = "\(value)"
        game.calculateScore(diceValue: game.diceVal)
        userLabel.text = "\(game.userScore)"
        //if(game.diceVal==0){
           // userLabel.text = "\(game.userScore)"
        //}
        //setComputerLabel()
        computerDiceView.image=UIImage(named: game.dicecube)!
        computerLabel.text = "\(game.computerScore)"
        computerLabelDiceValue.text = "\(game.diceVal)"
        print(game.currentUser)
        test()
    }
    
    
    func setComputerLabel(){
        if game.currentUser == "computer"{
            //game.AIComputer()
            computerLabel.text = "\(game.computerScore)"
            //var test : Int = 0
           // while test < 5{
            
           // diceVIewController.image = UIImage(named: game.dicecube)
             //   test = test + 1
            //}
        }
    }
    
    
    func test(){
        
        if(game.currentUser=="computer"){
            game.AIComputer()
            //var timer : Timer!
           // timer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: Selector ("updateImageDice"), userInfo: nil, repeats: true)
           // func updateImageDice(){
               // diceVIewController.image = UIImage(named: game.dicecube)
            computerDiceView.image=UIImage(named: game.dicecube)
            computerLabel.text = "\(game.computerScore)"
            computerLabelDiceValue.text = "\(game.diceVal)"
           // }
           // updateImageDice()
           // diceVIewController.image = UIImage(named: game.dicecube )!
            //var test : Int = 0
            //var test2 : String = ""
          //  while test <= 10 {
               // sleep(3)
               // diceVIewController.image = UIImage(named: game.dicecube )!
                //let randomNumber = Int(arc4random_uniform(6))
               // dicecube = diceArraycee[randomNumber]
                
                //print (dicecube)
                //if(dicecube=="dice1"){
                    //print("stop")
                   // break;
                    
              //  }
              //  test+=1
            
            
           // var index = Int(arc4random_uniform(6))
           // game.setDice()
            //if(game.dicecube=="dice1"){
            //    print("done")
              //  diceVIewController.stopAnimating()
           // }
           // var numtest : Int = 0
           // while numtest<5{
            //game.setDice()
            //let 
           // diceVIewController.animationImages = [ UIImage(named: "dice3")!,UIImage(named: "dice4")!,UIImage(named: "dice6")!,UIImage(named: "dice5")!]
            //diceVIewController.image = UIImage(named: game.dicecube)!
            //diceVIewController.animationDuration=4
           // diceVIewController.startAnimating()
                //numtest+=1
          // }
    }
    }
    
   
    override func loadViewIfNeeded() {
        queue.async{
        if(self.game.currentUser=="computer"){
            print ("lalala")
            
            self.computerLabel.text = "\(self.game.computerScore)"
            self.computerLabelDiceValue.text = "\(self.game.diceVal)"
            
            }
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        queue.async{
          
            if(self.game.currentUser=="computer"){
            print ("lalala")
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  setComputerLabel
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
}


