//
//  ViewController.swift
//  TConverter
//
//  Created by Sonata Girl on 11.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celciusLabel: UILabel!
    @IBOutlet weak var farengheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let tempCelcius = Int(round(sender.value))
        celciusLabel.text = "\(tempCelcius)ºC"
        
        let tempFarenheit = Int(round((sender.value * 9 / 5) + 32))
        farengheitLabel.text = "\(tempFarenheit)ºF"
    }
}

