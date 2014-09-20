//
//  SignInViewController.swift
//  Carousel
//
//  Created by Loren Heiman on 9/19/14.
//  Copyright (c) 2014 Loren Heiman. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
   
    @IBOutlet weak var signInScrollView: UIScrollView!
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    
    @IBAction func signInButton(sender: AnyObject) {
        if emailField.text == "" {
             var noEmailAlert = UIAlertView(title: "Email Required", message: "Please enter an email address", delegate: self, cancelButtonTitle: "OK")
            noEmailAlert.show()
        }
        
        else if passwordField.text == ""{
            var noPasswordAlert = UIAlertView(title: "Password Required", message: "Please enter your password", delegate: self, cancelButtonTitle: "OK")
            noPasswordAlert.show()
        }
        
        else if emailField.text == "loren@email.com" && passwordField.text == "lorenpassword" {
            var signingInAlert = UIAlertView (title: "Signing in...", message: nil, delegate: self, cancelButtonTitle: nil)
            signingInAlert.show()
            
           delay(2) {
            self.performSegueWithIdentifier("signInSegue", sender: self)
            }
            
        }
        
        else {
            var invalidCredentialsAlert = UIAlertView(title: "Invalid Login", message: "Please try again", delegate: self, cancelButtonTitle: "OK")
            invalidCredentialsAlert.show()
        }
        
    }
    
    
    @IBAction func onEmailEditBegin(sender: AnyObject) {
        
    
        
    }
    
    
    @IBAction func SignInBack(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true )
    }
    override func viewDidLoad() {
        
        signInScrollView.contentSize = CGSize(width: 320, height: 700)
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
