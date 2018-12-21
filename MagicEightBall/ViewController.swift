//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Erica Naglik on 12/20/18.
//  Copyright © 2018 Erica Naglik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        //Dispose of any resources that can be recreated.
    }
    
    @IBAction func shakeButtonTapped(_ sender: Any){
        print("Shake it like a polaroid picture!")
        
        answerLabel.text = "button was tapped"
    }


}

