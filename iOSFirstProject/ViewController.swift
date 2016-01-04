//
//  ViewController.swift
//  iOSFirstProject
//
//  Created by Popov Denis on 04/01/16.
//  Copyright © 2016 DennisGeekman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var topLabel: UILabel!
    @IBOutlet var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ChangeLabelName(sender: AnyObject) {
        topLabel.text = "Hello " + textField.text! + ", welcome to iOS development!"
    }

    @IBAction func CloseThisApplication(sender: AnyObject) {
        exit(EXIT_SUCCESS);
    }
    @IBAction func KeyboardDissmiss(sender: AnyObject) {
        self.resignFirstResponder()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
}

