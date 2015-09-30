//
//  FloatingButton.swift
//  FloatingHeads
//
//  Created by Katherine Peterson on 2015-09-30.
//  Copyright © 2015 KatieExpatriated. All rights reserved.
//

import UIKit

class FloatingButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    func setup () {
        tintColor = UIColor.whiteColor()
        setBackgroundImage(UIColor.flatBlueColor().pixelImage(), forState: UIControlState.Normal)
        layer.cornerRadius = frame.width/2
        layer.masksToBounds = true
        
    }
}
