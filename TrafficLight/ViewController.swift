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
        numberOfClicks += 1
        
        signals.forEach{ $0.alpha = 0.3 }
        
        switch numberOfClicks {
        case 1:
            signals[0].alpha = 1
        case 2:
            signals[1].alpha = 1
        case 3:
            signals[2].alpha = 1
            numberOfClicks = 0
        default:
            break
        }
    }
}

