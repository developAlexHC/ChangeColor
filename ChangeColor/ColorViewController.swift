//
//  ColorViewController.swift
//  ChangeColor
//
//  Created by Alex Hsieh on 2017/11/9.
//  Copyright © 2017年 Alex Hsieh. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    @IBOutlet weak var backgroundView: UIView!
    
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBAction func redSlider(_ sender: UISlider) {
        redLabel.text = "Red:\(Int(sender.value))"
        ChangeColor()
    }
    
    
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBAction func greenSlider(_ sender: UISlider) {
        greenLabel.text = "Green:\(Int(sender.value))"
        ChangeColor()
    }
    
    
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    @IBAction func blueSlider(_ sender: UISlider) {
        blueLabel.text = "Blue:\(Int(sender.value))"
        ChangeColor()
    }
    
    func ChangeColor(){
        backgroundView.backgroundColor = UIColor(red:CGFloat(redSlider.value)/255,green:CGFloat(greenSlider.value)/255,blue:CGFloat(blueSlider.value)/255,alpha:1)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
