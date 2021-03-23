//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by MACBOOK on 23.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var RedView: UIView!
    @IBOutlet weak var YellowView: UIView!
    @IBOutlet weak var GreenView: UIView!
    @IBOutlet weak var StartButton: UIButton!
    
    private var counterStartButtonPressed = 0 {
        didSet {
            if oldValue == 3 {
                counterStartButtonPressed = 1
            }
        }
    }
    
    override func viewDidLoad() {
        StartButton.layer.cornerRadius = 10
        
        RedView.alpha = 0.3
        YellowView.alpha = 0.3
        GreenView.alpha = 0.3
    }
    
    override func viewWillLayoutSubviews() {
        super.viewDidLoad()
        
        RedView.layer.cornerRadius = RedView.frame.size.width / 2
        YellowView.layer.cornerRadius = YellowView.frame.size.width / 2
        GreenView.layer.cornerRadius = GreenView.frame.size.width / 2
    }
    
    @IBAction func StartButtonPressed() {
        StartButton.setTitle("NEXT", for: .normal)
        counterStartButtonPressed += 1
        changingViewColor()
    }
    
    private func changingViewColor() {
        switch counterStartButtonPressed {
        case 1 :
            GreenView.alpha = 0.3
            RedView.alpha = 1
        case 2 :
            RedView.alpha = 0.3
            YellowView.alpha = 1
        case 3 :
            YellowView.alpha = 0.3
            GreenView.alpha = 1
        default:
            break
        }
    }
}

