//
//  ViewController.swift
//  multipy
//
//  Created by Kai Gorman on 8/23/16.
//  Copyright © 2016 Kai Gorman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var typeNumberTxt: UITextField!
    
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var numberLbl: UILabel!

    @IBAction func whenStartBtnPressed(sender: UIButton) {
        if typeNumberTxt.text != nil && typeNumberTxt.text != "" {
            
            logoImg.hidden = false
            startBtn.hidden = false
            typeNumberTxt.hidden = false
            
            addBtn.hidden = true
            numberLbl.hidden = true
    }
}

}







