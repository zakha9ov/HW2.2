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
        redSlider.minimumTrackTintColor = .red
        
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
        
        // Label
        redValue.text = String(redSlider.value)
        greenValue.text = String(greenSlider.value)
        blueValue.text = String(blueSlider.value)
    }
    
    override func viewWillLayoutSubviews() {
        showRGBView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }

    @IBAction func redSliderAction() {
        redValue.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func greenSliderAction() {
        greenValue.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func blueSliderAction() {
        blueValue.text = String(format: "%.2f", blueSlider.value)
    }
    
}

