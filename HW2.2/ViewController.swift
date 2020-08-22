//
//  ViewController.swift
//  HW2.2
//
//  Created by Mikhail Zakharov on 22.08.2020.
//  Copyright © 2020 Mikhail Zakharov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showRGBView: UIView!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Slider
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        
        // Label
        
    }

    @IBAction func redSliderAction() {
    }
    
    @IBAction func greenSliderAction() {
    }
    
    @IBAction func blueSliderAction() {
    }
    
}

