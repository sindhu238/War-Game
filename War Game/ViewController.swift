//
//  ViewController.swift
//  War Game
//
//  Created by Venkateswara on 02/11/16.
//  Copyright © 2016 Sindhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftCardImageView: UIImageView!
    @IBOutlet weak var rightCardImageView: UIImageView!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    let cardValues : [String] = ["card2", "card3", "card4", "card5", "card6"
        , "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealButton(_ sender: UIButton) {
        
        let leftCardNumber: Int = Int(arc4random_uniform(13))
        let rightCardNumber: Int = Int(arc4random_uniform(13))
        
        leftCardImageView.image = UIImage(named: cardValues[leftCardNumber])
        rightCardImageView.image = UIImage(named: cardValues[rightCardNumber])
        
        if leftCardNumber > rightCardNumber {
            leftScore += 1
            playerScoreLabel.text = String(leftScore)
        }
        else if leftCardNumber < rightCardNumber {
            rightScore += 1
            cpuScoreLabel.text = String(rightScore)
        }
        
    }

}

