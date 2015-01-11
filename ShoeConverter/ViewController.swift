//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Leytzher on 1/11/15.
//  Copyright (c) 2015 Leytzher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womenShoeSizeTextField: UITextField!
    
    @IBOutlet weak var womenConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
//        let sizeFromTextField = mensShoeSizeTextField.text
//        let numberFromTextField = sizeFromTextField.toInt()  //create an optional
//        var integerFromtTextField = numberFromTextField!  //unwrap the optional
    
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        
        let conversionConstant = 30
        
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"

        
    }

    @IBAction func convertWomenShoeSizeButtonPressed(sender: UIButton) {
        let sizeFromTextField = Double((womenShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womenConvertedShoeSizeLabel.hidden = false
        womenConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        
    }
}

