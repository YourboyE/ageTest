//
//  ViewController.swift
//  ageTest
//
//  Created by YourboyE on 7/20/16.
//  Copyright © 2016 YourboyE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //variables
    var maxAge = 0
    
    // Outlets
    @IBOutlet weak var whatAgeLogo: UIImageView!
    @IBOutlet weak var enterAgeTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var playAgain: UIButton!
    @IBOutlet weak var ageMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    
    
    @IBAction func onPlayBtnPressed(sender:UIButton!){
        
        if enterAgeTxt.text != nil && enterAgeTxt.text != "" {
        
        whatAgeLogo.hidden = true
        enterAgeTxt.hidden = true
        playBtn.hidden = true
        
        playAgain.hidden = false
        ageMessage.hidden = false
            
        maxAge = Int(enterAgeTxt.text!)!
            
        updateLabel()
    }
    }
    
    func updateLabel(){
        
        if (maxAge <= 21){
            ageMessage.text = "Your Still Young!"
        } else if (maxAge >= 22 && maxAge <= 70) {
            ageMessage.text = "Your Getting Older!"
        } else if (maxAge >= 71){
            ageMessage.text = "Wow Your Old!"
            
        }

    }
    
    
    @IBAction func onPlayAgainBtnPressed(sender: UIButton) {
        
        whatAgeLogo.hidden = false
        enterAgeTxt.hidden = false
        playBtn.hidden = false
        
        playAgain.hidden = true
        ageMessage.hidden = true
        
        enterAgeTxt.text = ""
        
    }
}


