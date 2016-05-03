//
//  DetailViewController.swift
//  MTHS
//
//  Created by Patrick Coxall on 2016-05-02.
//  Copyright © 2016 Patrick Coxall. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, GIDSignInUIDelegate {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.valueForKey("timeStamp")!.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
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
        
        
        
        self.configureView()
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
    
//    func signIn(signIn: GIDSignIn!, didSignInForUser user: GIDGoogleUser!, withError error: NSError!) {
//        print(user.profile.email)
//        print(user.profile.imageURLWithDimension(400))
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

