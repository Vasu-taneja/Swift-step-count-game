//
//  ViewController.swift
//  Lab2
//
//  Created by user197526 on 6/2/21.
//

import UIKit

class ViewController: UIViewController {

    //Declaration of outlets for output label
    @IBOutlet weak var stepLabel: UILabel!
    
    //Decalration and intialisation of step and current value
    var step = 1;
    var currentValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    //Decrease count function
    @IBAction func decreaseCount() {
        currentValue -= step;
        update()
    }
    
    //Increase count function
    @IBAction func increaseCount() {
        currentValue += step
        update()
    }
    
    //Reset count function
    @IBAction func resetValue() {
        step = 1
        currentValue = 0
        update()
    }
    
    //Changes effect of increase and decrease button to 2 function
    @IBAction func changeValueByTwo() {
        step=2
    }
    
    //Function to update count value in label
    func update() {
        stepLabel.text = "\(currentValue)"
    }
}

