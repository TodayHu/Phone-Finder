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
        
        self.view.backgroundColor = UIColor(hue: 0, saturation: 0.7, brightness: 0.9, alpha: 1) //flat red
        
        let labelHeight: CGFloat = 100
        let label = UILabel(frame: CGRectMake(0, 0, self.view.frame.size.width, labelHeight))
        label.textAlignment = .Center
        label.textColor = UIColor.whiteColor()
        label.backgroundColor = UIColor.clearColor()
        label.text = "HERE I AM"
        label.font = UIFont(name: "Avenir", size: 50)
        label.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/3 - labelHeight/2)
        self.view.addSubview(label)
        
        let transparentWhiteColor = UIColor(hue: 1, saturation: 0, brightness: 1, alpha: 0.75)
        let buttonWidth: CGFloat = 150
        let buttonHeight: CGFloat = 75
        
        let button = MyButton(frame: CGRectMake(self.view.frame.size.width/2 - buttonWidth/2, self.view.frame.size.height/3*2 - buttonHeight/2, buttonWidth, buttonHeight))
        button.titleLabel?.font = UIFont(name: "Avenir", size: 25)
        button.setTitle("GOT IT", forState: .Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.whiteColor().CGColor
        button.layer.cornerRadius = 10
        button.addTarget(self, action: "buttonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
        
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    func buttonPressed(sender: UIButton!) {
        println("test")
    }
}

class MyButton : UIButton {
    
    override var highlighted: Bool {
        get {
            return super.highlighted
        }
        set {
            if newValue {
                backgroundColor = UIColor.whiteColor()
                setTitleColor(self.superview?.backgroundColor, forState: .Highlighted)
            }
            else {
                backgroundColor = UIColor.clearColor()
            }
            super.highlighted = newValue
        }
    }
}
