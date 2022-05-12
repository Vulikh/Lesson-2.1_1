//
//  ViewController.swift
//  Lesson 2.1_1
//
//  Created by Федор Вулих on 10.05.2022.
//

import UIKit

enum Light {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var switchLightButton: UIButton!
    var nextLight = Light.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 100 / 2
        redLightView.alpha = 0.3
        yellowLightView.layer.cornerRadius = 100 / 2
        yellowLightView.alpha = 0.3
        greenLightView.layer.cornerRadius = 100 / 2
        greenLightView.alpha = 0.3
        switchLightButton.layer.cornerRadius = 10
        
    
    }
    
    
    
    @IBAction func switchLightButtonPressed() {
        switchLightButton.setTitle("NEXT", for: .normal)
        switch nextLight {
        case .red:
            redLightView.alpha = 1.0
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
            nextLight = Light.yellow
        case .yellow:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1.0
            greenLightView.alpha = 0.3
            nextLight = Light.green
        case .green:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1.0
            nextLight = Light.red
        }
        
        
    }
    
    
    

}

