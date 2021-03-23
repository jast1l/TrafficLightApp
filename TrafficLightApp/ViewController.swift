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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        RedView.layer.cornerRadius = 90
        YellowView.layer.cornerRadius = 90
        GreenView.layer.cornerRadius = 90
        
        StartButton.layer.cornerRadius = 10
        
        RedView.alpha = 0.3
        YellowView.alpha = 0.3
        GreenView.alpha = 0.3
        
    }

    @IBAction func StartButtonPressed(_ sender: Any) {
    }
    
}

