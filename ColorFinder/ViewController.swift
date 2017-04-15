//
//  ViewController.swift
//  ColorFinder
//
//  Created by Tseng Kai Ping on 2017/4/1.
//  Copyright © 2017年 Tseng Kai Ping. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var redValue = 255
    var greenValue = 255
    var blueValue = 255
    @IBOutlet weak var redText: UILabel!
    
    @IBOutlet weak var greenText: UILabel!
    
    @IBOutlet weak var blueText: UILabel!
    
    
    @IBAction func redSliderChanged(_ sender: UISlider) {
        redValue = lroundf(sender.value)
        redText.text = "\(redValue)"
        changeBackgroundColor()
    }
    
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        greenValue = lroundf(sender.value)
        greenText.text = "\(greenValue)"
        changeBackgroundColor()
    }
    
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        blueValue = lroundf(sender.value)
        blueText.text = "\(blueValue)"
        changeBackgroundColor()
    }
    
    func changeBackgroundColor() {
        self.view.backgroundColor = UIColor(displayP3Red: CGFloat(redValue)/255.0, green: CGFloat(greenValue)/255.0, blue: CGFloat(blueValue)/255.0, alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

