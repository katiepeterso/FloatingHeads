//
//  FloatingButton.swift
//  FloatingHeads
//
//  Created by Katherine Peterson on 2015-09-30.
//  Copyright © 2015 KatieExpatriated. All rights reserved.
//

import UIKit

class FloatingButton: UIButton {
    
    var buttonBackgroundColor = UIColor() {
        didSet {
            setup(buttonBackgroundColor.pixelImage())
        }
    }
    
    func setup (backgroundImage:UIImage) {
        tintColor = UIColor.whiteColor()
        setBackgroundImage(backgroundImage, forState: UIControlState.Normal)
        layer.cornerRadius = frame.width/2
        layer.masksToBounds = true
        UIButtonType.System
    }
}
