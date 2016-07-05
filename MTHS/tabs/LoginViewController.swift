//
//  LoginViewController.swift
//  MTHS
//
//  Created by Patrick Coxall on 2016-07-03.
//  Copyright © 2016 Patrick Coxall. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, GIDSignInUIDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Google Signin
        GIDSignIn.sharedInstance().uiDelegate = self
        
        var configureError: NSError?
        GGLContext.sharedInstance().configureWithError(&configureError)
        
        if configureError != nil {
            print(configureError)
        }
        
        
        //GIDSignIn.sharedInstance().delegate = self
        
        let button = GIDSignInButton(frame: CGRectMake(0, 0, 100, 100))
        button.center = view.center
        
        view.addSubview(button)
        
    }
    
    // Present a view that prompts the user to sign in with Google
    func signIn(signIn: GIDSignIn!,
                presentViewController viewController: UIViewController!) {
        self.presentViewController(viewController, animated: true, completion: nil)
    }
    
    // Dismiss the "Sign in with Google" view
    func signIn(signIn: GIDSignIn!,
                dismissViewController viewController: UIViewController!) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
