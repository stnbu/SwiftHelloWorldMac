//
//  AppDelegate.swift
//  SwiftHelloWorldMac
//
//  Created by Daniel Bergquist on 6/3/14.
//  Copyright (c) 2014 Daniel Bergquist. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
                            
    @IBOutlet var window: NSWindow?

    @IBOutlet var name : NSTextField!
    @IBOutlet var outputField : NSTextField!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        self.outputField.stringValue = "Hello, World!"
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


    @IBAction func buttonPushed(_ sender : AnyObject) {
        let name = self.name.stringValue
        
        if name.isEmpty {
            self.outputField.stringValue = "Come again?"
        }
        else {
            self.outputField.stringValue = "Hello, \(self.name.stringValue)!"
        }
    }
}

