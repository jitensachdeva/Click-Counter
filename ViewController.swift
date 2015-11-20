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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let label = UILabel()
        label.frame = CGRectMake(150,150,60,60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        let button = UIButton()
        button.frame = CGRectMake(150,250, 60,60)
        button.setTitle("click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        view.addSubview(button)
        
        button.addTarget(self, action: "incrementCount", forControlEvents: .TouchUpInside)
    }
    
    func incrementCount(){
        count++
        label.text = "\(count)"
    }


}

