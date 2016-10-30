//
//  ViewController.swift
//  FlatAlertExample
//
//  Created by Jesse on 30/10/2016.
//  Copyright © 2016 Full Stop Apps. All rights reserved.
//

import UIKit
import FlatAlert

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func oneButtonAlert(_ sender: AnyObject) {
        //Create the alert
        let alert = FlatAlert(title: "Flat Alert", message: "Wow, dosen't this look amazing? I am completely astonished by this work that I must donate via PayPal immediately!", style: .alert)
        //create the action
        let action = FlatAlertAction(title: "Ok", style: .normal) { 
            print("Pressed ok action")
        }
        
        //add the action
        alert.add(action: action)
        
        //present the alert
        present(alert, animated: true, completion: nil)
        
        //use this if you are in a non-uiviewcontroller class e.g SKScene
        //self.view.window?.rootViewController!.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func oneButtonAlertWithBlur(_ sender: AnyObject) {
        //Create the alert
        let alert = FlatAlert(title: "Flat Alert", message: "I think that I should add customisability in a future version. What do you think?", style: .alertWithBlur)
        //create the action
        let action = FlatAlertAction(title: "Ok", style: .normal) {
            print("Pressed ok action")
        }
        
        //add the action
        alert.add(action: action)
        
        //present the alert
        present(alert, animated: true, completion: nil)
        
        //use this if you are in a non-uiviewcontroller class e.g SKScene
        //self.view.window?.rootViewController!.present(alert, animated: true, completion: nil)

    }
    
    @IBAction func twoButtonAlert(_ sender: AnyObject) {
        //Create the alert
        let alert = FlatAlert(title: "Flat Alert", message: "I'm tired of writing so I'm gonna be using lorem ispum.", style: .alert)
        //create the action
        let okAction = FlatAlertAction(title: "Ok", style: .normal) {
            print("Pressed ok action")
        }
        
        let noAction = FlatAlertAction(title: "No", style: .destructive) {
            print("Pressed no action")
        }
        
        //add the actions
        alert.add(action: okAction)
        alert.add(action: noAction)
        
        //present the alert
        present(alert, animated: true, completion: nil)
        
        //use this if you are in a non-uiviewcontroller class e.g SKScene
        //self.view.window?.rootViewController!.present(alert, animated: true, completion: nil)

    }
    
    @IBAction func twoButtonAlertWithBlur(_ sender: AnyObject) {
        //Create the alert
        let alert = FlatAlert(title: "Flat Alert", message: "In hac habitasse platea dictumst.", style: .alertWithBlur)
        //create the action
        let okAction = FlatAlertAction(title: "Ok", style: .normal) {
            print("Pressed ok action")
        }
        
        let noAction = FlatAlertAction(title: "No", style: .destructive) {
            print("Pressed no action")
        }
        
        //add the actions
        alert.add(action: okAction)
        alert.add(action: noAction)
        
        //present the alert
        present(alert, animated: true, completion: nil)
        
        //use this if you are in a non-uiviewcontroller class e.g SKScene
        //self.view.window?.rootViewController!.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func threeButtonAlert(_ sender: AnyObject) {
        //Create the alert
        let alert = FlatAlert(title: "Flat Alert", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer non vehicula tortor. Sed ut tellus.", style: .alert)
        //create the action
        let okAction = FlatAlertAction(title: "Ok", style: .normal) {
            print("Pressed ok action")
        }
        
        let noAction = FlatAlertAction(title: "No", style: .destructive) {
            print("Pressed no action")
        }
        
        let notSureAction = FlatAlertAction(title: "Not Sure", style: .surprise) {
            print("Pressed not sure action")
        }
        
        //add the actions
        alert.add(action: okAction)
        alert.add(action: noAction)
        alert.add(action: notSureAction)
        
        //present the alert
        present(alert, animated: true, completion: nil)
        
        //use this if you are in a non-uiviewcontroller class e.g SKScene
        //self.view.window?.rootViewController!.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func threeButtonAlert(WithBlur_ sender: AnyObject) {
        //Create the alert
        let alert = FlatAlert(title: "Flat Alert", message: "Sed suscipit feugiat elit, a viverra enim. Phasellus scelerisque, arcu nec tempor vestibulum, arcu arcu.", style: .alertWithBlur)
        //create the action
        let okAction = FlatAlertAction(title: "Ok", style: .normal) {
            print("Pressed ok action")
        }
        
        let noAction = FlatAlertAction(title: "No", style: .destructive) {
            print("Pressed no action")
        }
        
        let notSureAction = FlatAlertAction(title: "Not Sure", style: .surprise) {
            print("Pressed not sure action")
        }
        
        //add the actions
        alert.add(action: okAction)
        alert.add(action: noAction)
        alert.add(action: notSureAction)
        
        //present the alert
        present(alert, animated: true, completion: nil)
        
        //use this if you are in a non-uiviewcontroller class e.g SKScene
        //self.view.window?.rootViewController!.present(alert, animated: true, completion: nil)
    }

}

