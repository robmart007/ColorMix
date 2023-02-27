//
//  ViewController.swift
//  ColorMix
//
//  Created by Roberto Martinez on 2/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    func updateColor() {
        var red : CGFloat = 0
        var grenn : CGFloat = 0
        var blue : CGFloat = 0
        
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if grennSwitch.isOn {
            grenn = CGFloat(grennSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        let color = UIColor(red: red, green:  grenn, blue: blue, alpha: 1)
        colorSwatch.backgroundColor = color
    }
    
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        grennSlider.isEnabled = grennSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var grennSlider: UISlider!
    
    @IBOutlet weak var colorSwatch: UIView!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var grennSwitch: UISwitch!
    
    @IBOutlet weak var blueSwitch: UISwitch!
    
    
    // MARK: VDL
    override func viewDidLoad() {
        super.viewDidLoad()
      
        updateColor()
        colorSwatch.layer.borderWidth = 5
        colorSwatch.layer.cornerRadius = 20
        colorSwatch.layer.borderColor =
            UIColor.black.cgColor
        updateControls()
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
            updateColor()
        updateControls()
        
        
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
       
        
        updateColor()
    
    
    }
    
    @IBAction func reset(_ sender: Any) {
        redSwitch.isOn = false
        grennSwitch.isOn = false
        blueSwitch.isOn = false
        redSlider.value = 1
        grennSlider.value = 1
        blueSlider.value = 1
        
        updateControls()
        updateColor()
    }
    
    
}
