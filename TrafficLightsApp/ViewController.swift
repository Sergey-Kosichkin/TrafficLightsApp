//
//  ViewController.swift
//  TrafficLightsApp
//
//  Created by Сергей Косичкин on 23.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let darkColor: CGFloat = 0.3
    let brightColor: CGFloat = 1
    
    @IBOutlet var redSignalView: UIView!
    @IBOutlet var yellowSignalView: UIView!
    @IBOutlet var greenSignalView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        redSignalView.alpha = darkColor
        yellowSignalView.alpha = darkColor
        greenSignalView.alpha = darkColor
        
        
    }
    override func viewWillLayoutSubviews() {
        redSignalView.layer.cornerRadius = redSignalView.frame.size.height * 0.5
        yellowSignalView.layer.cornerRadius = redSignalView.layer.cornerRadius
        greenSignalView.layer.cornerRadius = redSignalView.layer.cornerRadius
        
    }
    
    
    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        
        if redSignalView.alpha == brightColor {
            redSignalView.alpha = darkColor
            yellowSignalView.alpha = brightColor
        } else if yellowSignalView.alpha == brightColor {
            yellowSignalView.alpha = darkColor
            greenSignalView.alpha = brightColor
        } else if redSignalView.alpha != brightColor ||
                    greenSignalView.alpha == brightColor {
            redSignalView.alpha = brightColor
            greenSignalView.alpha = darkColor
            
        }
        
    }
    
}
