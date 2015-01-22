//
//  ViewController.swift
//  Postcard
//
//  Created by Tom Drynda on 06/01/2015.
//  Copyright (c) 2015 Tom Drynda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    var buttonOn = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.blueColor()
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder() // Get rid of kbd.
        // First responder to enterMessageTextField is the keyboard.
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)

/*
        if(buttonOn)
        {
            sender.backgroundColor = UIColor.orangeColor()
            messageLabel.backgroundColor = UIColor.whiteColor()
            messageLabel.hidden = true
            messageLabel.text = ""
        }
        else
        {
            sender.backgroundColor = UIColor.redColor()
            //sender.v
            messageLabel.backgroundColor = UIColor.redColor()
            messageLabel.text = "Hello, world."
            messageLabel.hidden = false
        }
        buttonOn != buttonOn
*/
    }
}

