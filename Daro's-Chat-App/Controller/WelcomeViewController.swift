//
//  ViewController.swift
//  Daro's-Chat-App
//
//  Created by Dario Mintzer on 31/01/2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        titleLabel.text = ""
        let titleText = "Daro's Chat"
        var charIndex = 0.0
        
        for letter in titleText {
            
            Timer.scheduledTimer(withTimeInterval: 0.2 * charIndex, repeats: false) { timer in
                self.titleLabel.text?.append(letter)
            }
            
            charIndex += 1
        }
        
        
      
    }


}

