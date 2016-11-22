//
//  AppDelegate.swift
//  AboveAllElse
//
//  Created by Tom Sinlgeton on 09/11/2016.
//  Copyright © 2016 Tom Sinlgeton. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var mainWindowController: ViewController? = nil
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
        mainWindowController?.view.window?.makeKeyAndOrderFront(self)
        return false
    }

}

