//
//  ViewController.swift
//  TrafficLight
//
//  Created by Pavel Gribachev on 05.11.2023.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet weak var changeColorButton: UIButton!
    @IBOutlet var signals:[UIView]!
    
    private var clickCounting = 0 {
        didSet {
            if clickCounting > signals.count - 1 {
                clickCounting = 0
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeColorButton.layer.cornerRadius = 10
        signals.forEach{ $0.layer.cornerRadius = $0.bounds.width / 2 }
    }
    
    @IBAction func changeColorsDidTappedButton() {
        changeColorButton.setTitle("NEXT", for: .normal)
        
        signals.forEach{ $0.alpha = 0.3 }
        signals[clickCounting].alpha = 1
        
        clickCounting += 1
    }
}

