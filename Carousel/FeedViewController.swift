//
//  FeedViewController.swift
//  Carousel
//
//  Created by Loren Heiman on 9/19/14.
//  Copyright (c) 2014 Loren Heiman. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {
   
    var defaults = NSUserDefaults.standardUserDefaults()
    
     var point1 = CGPoint(x: 0, y: 300)

    
    @IBAction func swipeTimeWheel(sender: AnyObject) {
    defaults.setInteger(1, forKey: "timeWheel")
     defaults.synchronize()
        feedScrollView.setContentOffset(point1, animated: true)
    }
   

    @IBOutlet weak var learnMoreBannerImageView: UIImageView!
    
    @IBOutlet weak var feedScrollView: UIScrollView!
    
    @IBOutlet weak var feedImageView: UIImageView!

    
    @IBAction func learnMoreDismiss(sender: AnyObject) {
        learnMoreBannerImageView.hidden = true
        
        
        
      
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if defaults.integerForKey("photoViewed") == 1 && defaults.integerForKey("photoShared") == 1 && defaults.integerForKey("timeWheel") == 1 {
            
            learnMoreBannerImageView.hidden = true
        }

        
        
        
        
        
        feedScrollView.contentSize = feedImageView.frame.size
        
        

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
