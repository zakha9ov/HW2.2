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
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Slider
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        // View RGB
        showRGBView.layer.cornerRadius = 10
        setRGBView()
        
        // Label
        setNameFromSliderValue(for: redLabel, greenLabel, blueLabel)
    }
    
    @IBAction func useRGBSliders(_ sender: UISlider) {
        switch sender.tag {
        case 0: redLabel.text = deliverSliderValue(from: sender)
        case 1: greenLabel.text = deliverSliderValue(from: sender)
        case 2: blueLabel.text = deliverSliderValue(from: sender)
        default: break
        }
        
        setRGBView()
    }
    
    private func deliverSliderValue(from slider: UISlider) ->  String {
        String(format: "%.2f", slider.value)
    }
    
    private func setRGBView() {
        showRGBView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                              green: CGFloat(greenSlider.value),
                                              blue: CGFloat(blueSlider.value),
                                              alpha: 1)
    }
    
    private func setNameFromSliderValue(for labes: UILabel...) {
        labes.forEach { label in
            switch label.tag {
            case 0: redLabel.text = deliverSliderValue(from: redSlider)
            case 1: greenLabel.text = deliverSliderValue(from: greenSlider)
            case 2: blueLabel.text = deliverSliderValue(from: blueSlider)
            default: break
            }
        }
    }
}

