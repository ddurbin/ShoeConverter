//
//  ViewController.swift
//  ShoeConverter
//
//  Created by DANIEL DURBIN on 2/26/15.
//  Copyright (c) 2015 DANIEL DURBIN. All rights reserved.
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

        let conversionConstant = 30
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "Men's Shoe Size: " + "\(sizeFromTextField + conversionConstant)" + " in European!"
        
    }

    @IBAction func cleatButtonPressed(sender: UIButton) {
        mensConvertedShoeSizeLabel.text = ""
        mensConvertedShoeSizeLabel.hidden = true
        mensShoeSizeTextField.text = ""
        
        womensConvertedShoeSizeLabel.text = ""
        womensConvertedShoeSizeLabel.hidden = true
        womensShoeSizeTextField.text = ""
    }
    
    @IBAction func womensConvertButtonPressed(sender: UIButton) {
        
        let conversionConstant = 20.5
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "Women's Shoe Size: " + "\(sizeFromTextField + conversionConstant)" + " in European!"
    }
}

