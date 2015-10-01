//
//  ViewController.swift
//  FloatingHeads
//
//  Created by Katherine Peterson on 2015-09-30.
//  Copyright © 2015 KatieExpatriated. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var addFloatingButton: FloatingButton!
    var delegate: FloatingMenuControllerDelegate? 

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        addFloatingButton.buttonBackgroundColor = UIColor.flatBlueColor()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func cancel() {
        print("Cancel Button")
    }
    
    func newContact() {
        print("New Contact")
    }
    
    func selectContact() {
        print("Selected Contact")
    }

}

