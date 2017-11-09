//
//  ViewController.swift
//  ChangeColor
//
//  Created by Alex Hsieh on 2017/11/6.
//  Copyright © 2017年 Alex Hsieh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var backgroungView: UIView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBAction func redSlider(_ sender: UISlider) {
        
        redLabel.text = "Red:\(Int(redSlider.value))"
        ChangeColor()
    }
    @IBAction func greenSlider(_ sender: UISlider) {
        greenLabel.text = "Green:\(Int(greenSlider.value))"
        ChangeColor()
    }
    
    @IBAction func blueSlider(_ sender: UISlider) {
        blueLabel.text = "Blue:\(Int(blueSlider.value))"
        ChangeColor()
    }
    
    func ChangeColor() {
        backgroungView.backgroundColor = UIColor(red:
            CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue:
            CGFloat(blueSlider.value)/255, alpha: 1)
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

