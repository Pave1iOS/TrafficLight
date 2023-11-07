//
//  ViewController.swift
//  TrafficLight
//
//  Created by Pavel Gribachev on 05.11.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var changeColorButton: UIButton!
    @IBOutlet var signals:[UIView]!
    
    var numberOfClicks = 0
            
    override func viewDidLoad() {
        super.viewDidLoad()
        changeColorButton.layer.cornerRadius = 10
        signals.forEach{ $0.layer.cornerRadius = 50 }
    }
    
    @IBAction func changeColorsDidTappedButton() {
        changeColorButton.setTitle("NEXT", for: .normal)
    
        signals.forEach{ $0.alpha = 0.3 }
    
        if numberOfClicks > signals.count - 1 {
            numberOfClicks = 0
        }
        
        signals[numberOfClicks].alpha = 1
        numberOfClicks += 1
    }
}

