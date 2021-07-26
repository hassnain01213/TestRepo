//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    var leftDiceImage = 0
    var rightDiceImage = 0
    var diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]

    @IBAction func rollButtonPressed(_ sender: Any) {
        //var leftDiceImage = 0 if initalized here i will not responed
        diceImageView1.image = diceArray[Int.random(in: 0...5)] //can be done this way
        leftDiceImage += 1
        
    }
    
    @IBAction func rollButton(_ sender: Any) {
        diceImageView2.image = diceArray.randomElement() //can be done this way // u can also use diceArray.shuffle() for the same
        rightDiceImage += 1
    }
}

