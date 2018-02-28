//
//  kReviewMe.swift
//  kReviewMe
//
//  Created by kavitha K on 28/02/18.
//  Copyright © 2018 Kavitha K. All rights reserved.
//

import UIKit
import StoreKit

class kReviewMe {
    
    /**  UserDefauls dictionary key where we store number of launching the app. **/
    
    let launchCountUserDefaultsKey = "noOfLaunches"
    
    /** Minimum number of launches that we need to have until we ask for review **/
    
    //let minimumLaunchCount = 2
    
    /** Get UserDefaults value if its nil or no value found, set the value and there on increament 'launchCount' on every launch. **/
    
    func isReviewViewToBeDisplayed(minimumLaunchCount:Int) -> Bool {
        
        let launchCount = UserDefaults.standard.integer(forKey: launchCountUserDefaultsKey)
        if launchCount >= minimumLaunchCount {
            return true
        } else {
            /** Increase launch count by '1' after every launch.**/
            UserDefaults.standard.set((launchCount + 1), forKey: launchCountUserDefaultsKey)
        }
        print(launchCount)
        
        return false
    }
    
    /** This method is called from any class with minimum launch count needed. **/
    
    func showReviewView(afterMinimumLaunchCount:Int){
        if(self.isReviewViewToBeDisplayed(minimumLaunchCount: afterMinimumLaunchCount)){
            SKStoreReviewController.requestReview()
        }
    }
}

