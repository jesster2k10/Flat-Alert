//
//  FlatAlert.swift
//  FlatAlert
//
//  Created by Jesse on 29/10/2016.
//  Copyright © 2016 Full Stop Apps. All rights reserved.
//

import Foundation

@IBDesignable class FlatAlertView: UIView {
    var shadowAdded: Bool = false
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    override func draw(_ rect: CGRect) {
        if shadowAdded { return }
        shadowAdded = true
        
        let shadowLayer = UIView(frame: self.frame)
        shadowLayer.backgroundColor = UIColor.clear
        shadowLayer.layer.shadowColor = UIColor.black.cgColor
        shadowLayer.layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: self.cornerRadius).cgPath
        shadowLayer.layer.shadowOffset = CGSize(width: 0, height: 0)
        shadowLayer.layer.shadowOpacity = 0.21
        shadowLayer.layer.shadowRadius = 51
        shadowLayer.layer.masksToBounds = true
        shadowLayer.clipsToBounds = false
        
        self.superview?.addSubview(shadowLayer)
        self.superview?.bringSubview(toFront: self)
    }
}

public enum FlatAlertStyle {
    case alert
    case alertWithBlur
}

public class FlatAlert: UIViewController {
    @IBOutlet weak var alertView: FlatAlertView!
    @IBOutlet weak var alertTitle: UILabel!
    @IBOutlet weak var alertMessage: UILabel!
    @IBOutlet weak var alertActionStackView: UIStackView!
    
    private var blurEffect: UIBlurEffect!
    private var blurView: UIVisualEffectView!
    
    private var darkView: UIView!
    
    var animator : UIDynamicAnimator?
    public var gravityDismissAnimation = true
    
    public convenience init(title: String, message: String, style: FlatAlertStyle) {
        self.init()
        
        let nib = loadNib("FlatAlert")
        if nib != nil{
            self.view = nib![0] as! UIView
        }
        
        modalPresentationStyle = .overCurrentContext
        modalTransitionStyle = .crossDissolve
        
        alertTitle.text = title
        alertMessage.text = message
        
        if style == .alertWithBlur {
            blurEffect = UIBlurEffect(style: .dark)
            blurView = UIVisualEffectView(effect: blurEffect)
            
            blurView.frame = view.bounds
            blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            view.insertSubview(blurView, belowSubview: alertView)
        } else {
            darkView = UIView(frame: view.frame)
            darkView.backgroundColor = UIColor.black
            darkView.alpha = 0.25
            darkView.frame = view.bounds
            darkView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            view.insertSubview(darkView, belowSubview: alertView)
        }
    }
    
    public func add(action: FlatAlertAction) {
        alertActionStackView.addArrangedSubview(action)
        
        if alertActionStackView.arrangedSubviews.count > 2 {
            alertActionStackView.axis = .vertical
            alertActionStackView.spacing = 5
        } else if alertActionStackView.arrangedSubviews.count == 2 {
            alertActionStackView.axis = .horizontal

            let btn1 = alertActionStackView.arrangedSubviews[0] as! FlatAlertAction
            let btn2 = alertActionStackView.arrangedSubviews[1] as! FlatAlertAction
            
            let widthConstraint = NSLayoutConstraint(item: btn1, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: btn2, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 0)
            NSLayoutConstraint.activate([widthConstraint])
        } else {
            alertActionStackView.axis = .horizontal
        }
        
        action.addTarget(self, action: #selector(FlatAlert.dissmiss(sender:)), for: .touchUpInside)
    }

    @objc private func dissmiss(sender: FlatAlertAction) {
        animateDismissWithGravity(style: .destructive)
        dismiss(animated: true, completion: nil)
    }
    
    private func animateDismissWithGravity(style: FlatAlertActionStyle){
        if gravityDismissAnimation == true{
            var radian = M_PI
            if style == .normal {
                radian = 2 * M_PI
            }else{
                radian = -2 * M_PI
            }
            animator = UIDynamicAnimator(referenceView: self.view)
            
            let gravityBehavior = UIGravityBehavior(items: [alertView])
            gravityBehavior.gravityDirection = CGVector(dx: 0, dy: 10)
            
            animator?.addBehavior(gravityBehavior)
            
            let itemBehavior = UIDynamicItemBehavior(items: [alertView])
            itemBehavior.addAngularVelocity(CGFloat(radian), for: alertView)
            animator?.addBehavior(itemBehavior)
        }
    }
    
    private func loadNib(_ name: String) -> [AnyObject]?{
        let podBundle = Bundle(for: self.classForCoder)
        
        if let bundleURL = podBundle.url(forResource: name, withExtension: "bundle") {
            
            if let bundle = Bundle(url: bundleURL) {
                return bundle.loadNibNamed(name, owner: self, options: nil) as [AnyObject]?
            }
            else {
                assertionFailure("Could not load the bundle")
            }
            
            
        }
        else if let nib = podBundle.loadNibNamed(name, owner: self, options: nil) {
            return nib as [AnyObject]?
        }
        else{
            assertionFailure("Could not create a path to the bundle")
        }
        return nil
    }
}
