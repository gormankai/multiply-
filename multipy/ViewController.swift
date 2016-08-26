//
//  ViewController.swift
//  multipy
//
//  Created by Kai Gorman on 8/23/16.
//  Copyright © 2016 Kai Gorman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var typeNumberTxt: UITextField!
    
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var numbersLbl: UILabel!
    
    //Properties
    var multiple = 0
    var runningSum = 0
    let MAX_SUM = 50
    
    @IBAction func onStartBtnPressed(sender: UIButton) {
        if typeNumberTxt.text != nil && typeNumberTxt.text != "" {
            
            logoImg.hidden = true
            startBtn.hidden = true
            typeNumberTxt.hidden = true
            
            addBtn.hidden = false
            numbersLbl.hidden = false
            
            resetLbl()
            multiple = Int(typeNumberTxt.text!)!
            runningSum = 0 
        }
        
    }
    
    func updateLbl( oldSum: Int, mul: Int, newSum: Int) {
        numbersLbl.text = "\(oldSum) + \(mul) = \(newSum)"
    }
    
    @IBAction func onAddBtnPressed(sender: UIButton) {
        let newSum = runningSum + multiple
        updateLbl(runningSum, mul: multiple, newSum: newSum)
        runningSum += multiple
        
        if isGameOver() {
            restartGame()
        }
    }
    
    func resetLbl() {
        numbersLbl.text = "Press Add to Add!"
    }
    
    func restartGame() {
        multiple = 0
        logoImg.hidden = false
        startBtn.hidden = false
        typeNumberTxt.hidden = false
        
        addBtn.hidden = true
        numbersLbl.hidden = true
        resetLbl()
        
    }
    
    func isGameOver() -> Bool {
        if runningSum >= MAX_SUM {
            return true
        } else {
            return false
        }
    
    

}
}








