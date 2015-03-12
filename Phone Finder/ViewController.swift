//
//  ViewController.swift
//  Phone Finder
//
//  Created by Michael Reiter on 2015-03-10.
//  Copyright (c) 2015 Michael Reiter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let labelHeight: CGFloat = 100
        let label = UILabel(frame: CGRectMake(0, 0, self.view.frame.size.width, labelHeight))
        label.textAlignment = .Center
        label.textColor = UIColor.blackColor()
        label.backgroundColor = UIColor.clearColor()
        label.text = "Here I am!"
        label.font = UIFont(name: "Avernir", size: 30)
        label.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/4 - labelHeight/2)
        self.view.addSubview(label)
        
        let button = UIButton(frame: CGRectMake(self.view.frame.size.width/2, self.view.frame.size.height/2, 200, 100))
        button.setTitle("Got it", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        button.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        self.view.addSubview(button)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

