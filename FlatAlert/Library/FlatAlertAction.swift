//
//  FlatAlertAction.swift
//  FlatAlert
//
//  Created by Jesse on 29/10/2016.
//  Copyright © 2016 Full Stop Apps. All rights reserved.
//

import UIKit

public enum FlatAlertActionStyle {
    case normal
    case destructive
    case surprise
}

public class FlatAlertAction: UIButton {
    public var alertAction: (() -> Void)?
    
    public var actionStyle: FlatAlertActionStyle!
    
    
    public convenience init(title: String, style: FlatAlertActionStyle, action: (() -> Void)? = nil) {
        self.init()
        alertAction = action
        
        setTitle(title, for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: UIFontWeightSemibold)
        titleLabel?.text = title
        
        if style == .normal {
            setTitleColor(UIColor(colorLiteralRed: 176/255, green: 176/255, blue: 176/255, alpha: 1.0), for: .normal)
        } else if style == .destructive {
            setTitleColor(UIColor(colorLiteralRed: 255/255, green: 0/255, blue: 0/255, alpha: 0.52), for: .normal)
        } else if style == .surprise {
            setTitleColor(generateRandomColor(), for: .normal)
        }
        
        addTarget(self, action: #selector(tapped(sender:)), for: .touchUpInside)
    }

    func tapped(sender: FlatAlertAction) {
        alertAction?()
    }
    
    func generateRandomColor() -> UIColor {
        let hue : CGFloat = CGFloat(arc4random() % 256) / 256 // use 256 to get full range from 0.0 to 1.0
        let saturation : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5 // from 0.5 to 1.0 to stay away from white
        let brightness : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5 // from 0.5 to 1.0 to stay away from black
        
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1)
    }
}
