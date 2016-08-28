//
//  ExtensionDelegate.swift
//  Day5Watch Extension
//
//  Created by Marat S. on 28/08/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import WatchKit

class ExtensionDelegate: NSObject, WKExtensionDelegate {

    func applicationDidFinishLaunching() {
        // Perform any final initialization of your application.
    }

    func applicationDidBecomeActive() {

      NSNotificationCenter.defaultCenter()
        .addObserver(self, selector: #selector(downloadComplete), name: "downloadCompleteNotification", object: nil)

    }

  func downloadComplete() {

    let ic = WKExtension.sharedExtension().rootInterfaceController as? InterfaceController

    ic?.updateUI()

  }

    func applicationWillResignActive() {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, etc.
    }

}
