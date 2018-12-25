//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Erica Naglik on 12/20/18.
//  Copyright © 2018 Erica Naglik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch","Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        //Dispose of any resources that can be recreated.
    }
    
    @IBAction func shakeButtonTapped(_ sender: UIButton){
        generateAnswer()
        //1
        let maxIndex = UInt32(answers.count)
        //2
        let randomIndex  = Int(arc4random_uniform(maxIndex))
        //3
        answerLabel.text = answers[randomIndex]
        
//        print("Shake it like a polaroid picture!")
//
//        answerLabel.text = "button was tapped"
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        
        generateAnswer()
        
        let maxIndex = UInt32(answers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        answerLabel.text = answers[randomIndex]
    }
    
    func generateAnswer() {
        let maxIndex = UInt32(answers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        answerLabel.text = answers[randomIndex]
    }
 

}

