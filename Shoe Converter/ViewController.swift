//
//  ViewController.swift
//  Shoe Converter
//
//  Created by Chrystian Rajchel on 6/4/15.
//  Copyright (c) 2015 crajchel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        
        //creates our conversion constant
        let conversionConstant = 30;
        
        /*
        //gets the string from the textfield
        let sizeFromTextField = mensShoeSizeTextField.text
        //converts the string into an optional int
        let numberFromTextField = sizeFromTextField.toInt()
        //unwraps the optional int
        var integerFromTextField = numberFromTextField!
        
        //conversion...
        integerFromTextField+=conversionConstant
        //unhides the label
        mensConvertedShoeSizeLabel.hidden = false
        //changes the int back into a string...
        let stringWithUpdatedShoeSize = "EU Size: \(integerFromTextField)"
        //updates labels text using the string
        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
        */

        //condensed version of whats above
        let sizeFromTextField = (mensShoeSizeTextField.text.toInt())!
        mensConvertedShoeSizeLabel.text = "EU Size: "+"\(sizeFromTextField + conversionConstant)"
        mensConvertedShoeSizeLabel.hidden = false
        
        //hides keyboard
        mensShoeSizeTextField.resignFirstResponder()
        
    }
    @IBAction func convert2ButtonPressed(sender: UIButton) {
        let conversionConstant = 30
        let sizeInField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        var newLabelText = "EU Size: " + "\(30+sizeInField)"
        womensConvertedShoeSizeLabel.text = newLabelText
        womensConvertedShoeSizeLabel.hidden = false
        womensShoeSizeTextField.resignFirstResponder()
    }

}

