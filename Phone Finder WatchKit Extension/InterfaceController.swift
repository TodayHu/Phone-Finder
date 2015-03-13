//
//  InterfaceController.swift
//  Phone Finder WatchKit Extension
//
//  Created by Michael Reiter on 2015-03-12.
//  Copyright (c) 2015 Michael Reiter. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    
    @IBAction func openPhoneApp() {
        let dict = NSDictionary()
        WKInterfaceController.openParentApplication(dict, reply: nil)
        println("launch app")
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
