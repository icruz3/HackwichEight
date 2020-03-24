//
//  ViewController.swift
//  HackwichEight
//
//  Created by Isaac Cruz on 3/10/20.
//  Copyright © 2020 Isaac Cruz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    var currentValue: Int = 0
    var targetValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        currentValue = lroundf(slider.value)
        targetValue = Int.random(in: 0...100)
    }
    
    @IBAction func guessNumberPressed(_ sender: Any) {
        
        _ = "The Value is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(title: "Hello World", message: "this is my first alert view", preferredStyle: .alert)
        
        let action = UIAlertAction(title:"Awesome", style: .default, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        
    }
    
    @IBAction func sliderMoved(_ sender: Any) {
        
       print("the value of the slider is:\(slider.value)")
    
    currentValue = lroundf(slider.value)

        
    }
    
    
    
}

