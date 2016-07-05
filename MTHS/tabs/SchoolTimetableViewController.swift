//
//  SchoolTimetableViewController.swift
//  MTHS
//
//  Created by Patrick Coxall on 2016-07-03.
//  Copyright © 2016 Patrick Coxall. All rights reserved.
//

import UIKit

class SchoolTimetableViewController: UIViewController {

    @IBOutlet weak var schoolTimetableViewController: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // load school timetable
        let url = NSBundle.mainBundle().URLForResource("School Timetables", withExtension:"html")
        let requestObj = NSURLRequest(URL: url!);
        schoolTimetableViewController.loadRequest(requestObj);
        
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
