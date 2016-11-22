//
//  ViewController.swift
//  AboveAllElse
//
//  Created by Tom Sinlgeton on 09/11/2016.
//  Copyright © 2016 Tom Sinlgeton. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    var isPinned: Bool = false
    
    @IBOutlet var pinButton: NSButton!
    @IBAction func pinButtonPressed(_ sender: Any) {
        switch isPinned {
        case false:
            pinButton.title = "Unpin"
            pinView()
        case true:
            pinButton.title = "Pin"
            unpinView()
        }
        isPinned = !isPinned
    }
    
    func pinView() {
        print("pinning")
        NSApplication.shared().windows[0].level = Int(CGWindowLevelForKey(.floatingWindow))
        
        NSApplication.shared().windows[0].level = Int(CGWindowLevelForKey(.maximumWindow))
    }
    
    func unpinView() {
        NSApplication.shared().windows[0].level = Int(CGWindowLevelForKey(.normalWindow))
        
//        NSApplication.shared().windows[0].level = Int(CGWindowLevelForKey(.))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let appDelegate = NSApp.delegate as! AppDelegate
        appDelegate.mainWindowController = self
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

