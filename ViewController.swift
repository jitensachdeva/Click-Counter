//
//  ViewController.swift
//  Click Counter
//
//  Created by Jitendra Sachdeva on 20/11/15.
//  Copyright © 2015 Dijini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!
    var additionalLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()   
        label.frame = CGRectMake(150,150,60,60)
        view.addSubview(label)
        self.label = label
        
        let additionLabel = UILabel()
        additionLabel.frame = CGRectMake(200, 150, 60, 60)
        additionalLabel.textColor = UIColor.redColor()
        view.addSubview(additionLabel)
        self.additionalLabel = additionLabel
        
        let button = UIButton()
        button.frame = CGRectMake(150,250, 60,60)
        button.setTitle("++", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        view.addSubview(button)
        button.addTarget(self, action: "incrementCount", forControlEvents: .TouchUpInside)
        
        let decrementButton = UIButton()
        decrementButton.frame = CGRectMake(200, 250, 60, 60)
        decrementButton.setTitle("--", forState: .Normal)
        decrementButton.setTitleColor(UIColor.redColor(), forState: .Normal)
        view.addSubview(decrementButton)
        decrementButton.addTarget(self, action: "decrementCount", forControlEvents: .TouchUpInside)
        
        let colorChanger = UIButton()
        colorChanger.frame = CGRectMake(150, 300, 150, 60)
        colorChanger.setTitle("ChangeColor", forState: .Normal)
        colorChanger.setTitleColor(UIColor.purpleColor(), forState: .Normal)
        view.addSubview(colorChanger)
        colorChanger.addTarget(self, action: "toggleColor", forControlEvents: .TouchUpInside)
        
        setUpLabels()
    }
    
    func incrementCount(){
        count++
        setUpLabels()
    }
    
    func decrementCount(){
        count--
        setUpLabels()
    }
    
    func setUpLabels(){
        label.text = "\(count)"
        additionalLabel.text = "\(count)"
    }
    
    func toggleColor(){
        view.backgroundColor = (view.backgroundColor == UIColor.brownColor()) ? UIColor.whiteColor() : UIColor.brownColor()
    }


}

