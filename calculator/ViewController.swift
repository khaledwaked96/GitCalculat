//
//  ViewController.swift
//  calculator
//
//  Created by A on 7/3/18.
//  Copyright © 2018 khaled waked. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return.lightContent}
   
    @IBOutlet weak var ResultLabel: UILabel!
    
    
    let Brain : BrainCalculater = BrainCalculater ()
    
    
    @IBAction func ButtonsAction(_ sender: UIButton) {
        
        if ResultLabel.text == "0" {ResultLabel.text = ""}
        
        if sender.tag == -1 {
            if !ResultLabel.text!.contains("."){
            
              ResultLabel.text = ResultLabel.text! + "."
        }
        }else{
        
                ResultLabel.text = ResultLabel.text! +
                    String(sender.tag)
            }
        }
    
    
    @IBAction func OperatingAction(_ sender: UIButton) {
        
        Brain.Add(Number: Double(ResultLabel.text!)!, With: Character(sender.titleLabel!.text!))
        
        
        if sender.titleLabel!.text! == "=" {
            ResultLabel.text = Brain.Result()
            Brain.Restart()
        } else {
            ResultLabel.text = "0"
        }
        
      
    }
    
    @IBAction func ACButton(_ sender: UIButton) {
        ResultLabel.text = "0"
        Brain.Restart()
    }
    
    
    @IBAction func MinusABlus(_ sender: UIButton) {
        ResultLabel.text = String(Double(ResultLabel.text!)! * -1)
        
    }
    
    @IBAction func HandrdSelf(_ sender: UIButton) {
        
          ResultLabel.text = String(Double(ResultLabel.text!)! / 100)
    }
    
  
    
    
    
    
}

