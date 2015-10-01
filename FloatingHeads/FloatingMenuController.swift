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
        newContact.frame.size = CGSize(width: 40, height: 40)
        newContact.buttonBackgroundColor = UIColor.flatBlueColor()
        
        let model4 = FloatingButton()
        model4.frame.size = CGSize(width: 40, height: 40)
        model4.setup(UIImage(named: "model-4")!)
        
        let model5 = FloatingButton()
        model5.frame.size = CGSize(width: 40, height: 40)
        model5.setup(UIImage(named: "model-5")!)
        
        let model6 = FloatingButton()
        model6.frame.size = CGSize(width: 40, height: 40)
        model6.setup(UIImage(named: "model-6")!)
        
        let model7 = FloatingButton()
        model7.frame.size = CGSize(width: 40, height: 40)
        model7.setup(UIImage(named: "model-7")!)
        
        let model8 = FloatingButton()
        model8.frame.size = CGSize(width: 40, height: 40)
        model8.setup(UIImage(named: "model-8")!)
        
        
        buttonItems += [newContact, model4, model5, model6, model7, model8]
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
        layoutButtons()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view.setNeedsDisplay()
    }
    
    func layoutButtons() {
        for (index, button) in buttonItems.enumerate() {
            button.center = CGPointMake(cancelButton.center.x, cancelButton.center.y - CGFloat((index + 1)*70))
            view.addSubview(button)
            view.bringSubviewToFront(button)
        }
    }
    
    @IBAction func closeFloatingMenu(sender: FloatingButton) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}
