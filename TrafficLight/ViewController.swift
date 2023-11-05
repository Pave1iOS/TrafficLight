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
    
    let cornerRadius: CGFloat = 50
    var numberOfClicks = 0
            
    override func viewDidLoad() {
        super.viewDidLoad()
        changeColorButton.layer.cornerRadius = 10
        
        redSignalView.layer.cornerRadius = cornerRadius
        yellowSignalView.layer.cornerRadius = cornerRadius
        greenSignalView.layer.cornerRadius = cornerRadius
    }
    
    @IBAction func changeColorsDidTappedButton() {
        changeColorButton.setTitle("NEXT", for: .normal)
        numberOfClicks += 1
            
            switch numberOfClicks {
            case 1:
                redSignalView.alpha = 1
                yellowSignalView.alpha = 0.3
                greenSignalView.alpha = 0.3
            case 2:
                redSignalView.alpha = 0.3
                yellowSignalView.alpha = 1
                greenSignalView.alpha = 0.3
            case 3:
                redSignalView.alpha = 0.3
                yellowSignalView.alpha = 0.3
                greenSignalView.alpha = 1
                numberOfClicks = 0
            default:
                break
            }
    }
}

