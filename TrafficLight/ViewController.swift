//
//  ViewController.swift
//  TrafficLight
//
//  Created by Pavel Gribachev on 05.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSignalView: UIView!
    
    @IBOutlet weak var yellowSignalView: UIView!
    
    @IBOutlet weak var greenSignalView: UIView!
    
    @IBOutlet weak var changeColorButton: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
                
    }

    
    @IBAction func changeColorsDidTappedButton() {
        changeColorButton.setTitle("NEXT", for: .normal)
        
        
        
    }
    
    
    

}

