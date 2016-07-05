//
//  DetailViewController.swift
//  MTHS
//
//  Created by Patrick Coxall on 2016-05-02.
//  Copyright © 2016 Patrick Coxall. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var detailedViewControllerWebView: UIWebView!

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
        
        // load morning announcements
        let url = NSURL (string: "https://mother-teresa-hs.blogspot.ca/?m=1");
        let requestObj = NSURLRequest(URL: url!);
        detailedViewControllerWebView.loadRequest(requestObj);

        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

