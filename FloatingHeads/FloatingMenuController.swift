//
//  FloatingMenuController.swift
//  FloatingHeads
//
//  Created by Katherine Peterson on 2015-09-30.
//  Copyright © 2015 KatieExpatriated. All rights reserved.
//

import UIKit

class FloatingMenuController: UIViewController {
    @IBOutlet weak var cancelButton: FloatingButton!
    @IBOutlet weak var floatingVisualEffectView: UIVisualEffectView!
    
    var buttonItems = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        cancelButton.buttonBackgroundColor = UIColor.flatRedColor()
        
        let newContact = FloatingButton()
        newContact.buttonBackgroundColor = UIColor.flatBlueColor()
        let model4 = FloatingButton()
        model4.setup(UIImage(named: "model-4")!)
        let model5 = FloatingButton()
        model5.setup(UIImage(named: "model-5")!)
        let model6 = FloatingButton()
        model6.setup(UIImage(named: "model-6")!)
        let model7 = FloatingButton()
        model7.setup(UIImage(named: "model-7")!)
        let model8 = FloatingButton()
        model8.setup(UIImage(named: "model-8")!)
        
        buttonItems += [newContact, model4, model5, model6, model7, model8]
    }

    @IBAction func closeFloatingMenu(sender: FloatingButton) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}
