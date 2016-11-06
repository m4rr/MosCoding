//
//  InterfaceController.swift
//  Day5Watch Extension
//
//  Created by Marat S. on 28/08/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

  @IBOutlet var label: WKInterfaceLabel!

  @IBAction func buttonTap() {

    label.setText("\(NSDate())")

  }

  
  func updateUI() {
    label.setText("\(NSDate())")
  }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user

      label.setText("Hello Watch World")

        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
