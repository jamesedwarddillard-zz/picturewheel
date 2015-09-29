//
//  SignInViewController.swift
//  picture wheel
//
//  Created by James Dillard on 9/23/15.
//  Copyright © 2015 James Dillard. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signInView: UIView!
    
    var initialY: CGFloat!
    let offset: CGFloat = -70
    

    @IBAction func onSignInButton(sender: AnyObject) {
        
        self.view.endEditing(true)
        
        if emailTextField.text!.isEmpty == true || passwordTextField.text!.isEmpty == true {
            
            // creating an alert controller
            let alertController = UIAlertController(title:"Please log in", message:"An email and password are required to log in. Muffins are optional but encouraged.", preferredStyle: .Alert)
            // add a cancel action
            
            let OKAction = UIAlertAction(title: "Got it.", style: .Default){
                (action) in
            }
            
            alertController.addAction(OKAction)
            
            presentViewController(alertController, animated: true, completion: nil)
        }
        
        else {
            
            let signInController = UIAlertController(title: nil, message: "Hold on a second", preferredStyle: .Alert)
            presentViewController(signInController, animated: true, completion: nil)
            
            delay(2){
                
                
                if self.emailTextField.text! == "ii" && self.passwordTextField.text! == "ii" {
                    signInController.dismissViewControllerAnimated(true, completion:nil)
                    self.performSegueWithIdentifier("signInSuccess", sender: self)
                    
                }
                
                else {
                    signInController.dismissViewControllerAnimated(true, completion:nil)
                    
                    let failedLogInController = UIAlertController(title: "Incorrect email / password", message: "Your email and password didn't match", preferredStyle: .Alert)
                    
                    let OKaction = UIAlertAction(title: "Okay", style: .Default){
                        (action) in
                    }
                    
                    failedLogInController.addAction(OKaction)
                    
                    self.presentViewController(failedLogInController, animated: true, completion: nil)
                    self.resignFirstResponder()
                }
                
                
                
            }
                
            }
    }
    
        
    @IBAction func onBackButton(sender: AnyObject) {
        navigationController!.popToRootViewControllerAnimated(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialY = signInView.frame.origin.y
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    func keyboardWillShow(notification: NSNotification!){
        var userInfo = notification.userInfo!
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(rawValue: UInt(animationCurve << 16)), animations: {
            
            self.signInView.frame.origin = CGPoint(x: self.signInView.frame.origin.x, y: self.initialY + self.offset)
            }, completion: nil)
    }
    
    func keyboardWillHide(notification: NSNotification!){
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(rawValue: UInt(animationCurve << 16)), animations: {
            
            self.signInView.frame.origin = CGPoint(x: self.signInView.frame.origin.x, y: self.initialY)
            }, completion: nil)
        
    }
    
}
