//
//  ViewController.swift
//  How Many Fingers?
//
//  Created by Bryan Bennett on 2/5/16.
//  Copyright © 2016 Bennett 12. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guess: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func guessButton(sender: AnyObject) {
    
        let randomNumber = arc4random_uniform(6)

        let guessInt = Int(guess.text!)
        
        if guessInt != nil {
            
            if Int(randomNumber) == guessInt {
                
                resultLabel.text = "Correct"
                
            }else {
                
                resultLabel.text = "NO! the number was \(randomNumber)"
                
            }
            
        }else {
            resultLabel.text = "please enter a number 0 - 5"
        }
        
        print(guess.text)
    
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

