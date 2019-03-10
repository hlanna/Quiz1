//
//  StartViewController.swift
//  Quiz1
//
//  Created by Anna Hacksell Lindberg on 2019-02-19.
//  Copyright © 2019 Anna Hacksell Lindberg. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBOutlet weak var svenska: UIButton!
    @IBOutlet weak var english: UIButton!
    
    
    
    @IBAction func svPressed(_ sender: UIButton){
       let vc : ViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        vc.chosenLanguage = "svenska"
        
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func enPressed(_ sender: UIButton){
        let vc : ViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        vc.chosenLanguage = "english"
        
        self.present(vc, animated: true, completion: nil)
      
        
        
    }
    
    
    
    
}







