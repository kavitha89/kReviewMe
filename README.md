# kReviewMe
iOS SKStoreReviewController demonstration with example project.

Include kReviewMe.Swift file in your project.

Call 'showReviewView'method in your view controller.

/** call 'showReviewView' method with desired launch counts needed. **/
        
        if #available(iOS 10.3, *) {
        kReviewMe().showReviewView(afterMinimumLaunchCount: yourLaunchCountinInt)
        }
        else{
            // Review View is unvailable for lower versions. Please use your custom view.
        }
