//
//  ViewController.swift
//  Dicee
//
//  Created by Administrator on 2/16/19.
//  Copyright © 2019 Nyi Nyi Htun Lwin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]

    @IBOutlet weak var ivDice1: UIImageView!
    @IBOutlet weak var ivDice2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rollDices()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        rollDices()
    }
    
    func rollDices() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6 ))
        
        ivDice1.image = UIImage(named: diceArray[randomDiceIndex1])
        ivDice2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
    // Shake device to roll dices
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        rollDices()
    }
    
}

