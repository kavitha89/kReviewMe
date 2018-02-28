//
//  ViewController.swift
//  kReviewMe
//
//  Created by kavitha K on 28/02/18.
//  Copyright © 2018 Kavitha K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /** call 'showReviewView' method with desired launch counts needed. **/
        if #available(iOS 10.3, *) {
        kReviewMe().showReviewView(afterMinimumLaunchCount: 2)
        }else{
            // Review View is unvailable for lower versions. Please use your custom view.
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

